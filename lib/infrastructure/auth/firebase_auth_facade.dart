import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:crave_app/domain/core/interfaces/i_storage.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/domain/settings/setting_data.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'firebase_user_mapper.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final Logger _logger;
  final IStorage _storage;

  FirebaseAuthFacade(
      this._firebaseAuth, this._firestore, this._logger, this._storage)
      : super();
  @override
  Future<Option<Profile>> getSignedInUserProfile() async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) {
      return none();
    }
    final userSnapshot =
        await _firestore.collection('users').doc(currentUser.uid).get();

    final isNewUser = userSnapshot.data() == null;
    if (!isNewUser) {
      final user = Profile.fromJson(userSnapshot.data()!);

      return optionOf(user);
    }
    return optionOf(currentUser.toProfile());
  }

  @override
  Future<Either<AuthFailure, Profile>> signInWithApple() async {
    String generateNonce([int length = 32]) {
      const charset =
          '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
      final random = Random.secure();
      return List.generate(
          length, (_) => charset[random.nextInt(charset.length)]).join();
    }

    /// Returns the sha256 hash of [input] in hex notation.
    String sha256ofString(String input) {
      final bytes = utf8.encode(input);
      final digest = sha256.convert(bytes);
      return digest.toString();
    }

    try {
      final rawNonce = generateNonce();
      final nonce = sha256ofString(rawNonce);

      // Request credential for the currently signed in Apple account.
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          // AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      // Create an `OAuthCredential` from the credential returned by Apple.
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      final _auth = await _firebaseAuth.signInWithCredential(oauthCredential);

      final currentUser = _auth.user;
      if (currentUser == null) {
        return left(const AuthFailure.unexpected());
      }
      return right(currentUser.toProfile());
    } on FirebaseAuthException catch (e, stacktrace) {
      _logger.d(stacktrace);
      _logger.d(e.message);
      switch (e.code) {
        case 'invalid-verification-code':
          return left(const AuthFailure.invalidOtpCode());
        case 'invalid-credential':
          return left(const AuthFailure.expiredCredential());
        default:
          return left(AuthFailure.serverError(e.message ?? 'An error occured'));
      }
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<void> signOut() async {
    final _box = await _storage.openBox(StorageConstants.user);
    await _storage.clear(_box);
    await _firebaseAuth.signOut();
    return;
  }

  @override
  Future<Either<AuthFailure, Profile>> signInWithPhoneNumberOtp({
    required String verificationId,
    required OtpCode otpCode,
  }) async {
    try {
      final _auth = await _firebaseAuth.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: otpCode.getOrCrash(),
        ),
      );
      final currentUser = _auth.user;
      if (currentUser == null) {
        return left(const AuthFailure.unexpected());
      }
      final userSnapshot =
          await _firestore.collection('users').doc(currentUser.uid).get();

      final isNewUser = userSnapshot.data() == null;
      if (!isNewUser) {
        final user = Profile.fromJson(userSnapshot.data()!);
        return right(user);
      }
      return right(currentUser.toProfile());
    } on FirebaseAuthException catch (e, stacktrace) {
      _logger.d(stacktrace);
      _logger.d(e.message);
      switch (e.code) {
        case 'invalid-verification-code':
          return left(const AuthFailure.invalidOtpCode());
        case 'invalid-credential':
          return left(const AuthFailure.expiredCredential());
        default:
          return left(AuthFailure.serverError(e.message ?? 'An error occured'));
      }
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, String>> verifyPhoneNumber(
      {required PhoneNumber phoneNumber}) async {
    try {
      final _completer = Completer<Either<AuthFailure, String>>();

      _firebaseAuth.verifyPhoneNumber(
        phoneNumber: '+${phoneNumber.getOrCrash()}',
        timeout: const Duration(seconds: 10),
        verificationCompleted: (AuthCredential credential) {},
        verificationFailed: (exception) {
          _logger.e(exception);
          _completer.complete(left(AuthFailure.serverError(
              exception.message ?? 'An error occured')));
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          _completer.complete(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // _completer.complete(right(verificationId));
        },
      );
      return _completer.future;
    } on FirebaseAuthException catch (e, stacktrace) {
      _logger.d(stacktrace);
      _logger.d(e.message);
      switch (e.code) {
        case 'invalid-verification-code':
          return left(const AuthFailure.invalidOtpCode());
        case 'invalid-credential':
          return left(const AuthFailure.expiredCredential());
        default:
          return left(AuthFailure.serverError(e.message ?? 'An error occured'));
      }
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerUser(
      {required int genderId}) async {
    try {
      final currentUser = _firebaseAuth.currentUser!;
      final defaultSeeking = genderId == 1
          ? [2]
          : genderId == 2
              ? [1]
              : [1, 2, 3];
      final profile = Profile(
        uid: currentUser.uid,
        isPublished: false,
        isNewUser: false,
        genderId: genderId,
        phoneNumber: currentUser.phoneNumber ?? '',
        settingData: SettingData(
          chatTimerNotification: true,
          likeNotification: true,
          newMessageAlert: true,
          pushNotification: true,
          seeking: defaultSeeking,
        ),
      );

      await _firestore
          .collection('users')
          .doc(currentUser.uid)
          .set(profile.toJson());
      return right(unit);
    } on FirebaseAuthException catch (e, stacktrace) {
      _logger.d(stacktrace);
      _logger.d(e.message);
      return left(AuthFailure.serverError(e.message ?? 'An error occured'));
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
}
