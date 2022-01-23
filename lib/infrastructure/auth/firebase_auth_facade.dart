import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:crave_app/domain/profile/profile.dart';
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

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firestore,
    this._logger,
  ) : super();
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
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
      );

      final _auth = await _firebaseAuth.signInWithCredential(oauthCredential);

      final currentUser = _auth.user;
      if (currentUser == null) {
        return left(const AuthFailure.serverError());
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
          return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<void> signOut() async {
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
        return left(const AuthFailure.serverError());
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
          return left(const AuthFailure.serverError());
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
          // _completer.complete(left(const AuthFailure.serverError()));
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
          return left(const AuthFailure.serverError());
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
      final profile = Profile(
        uid: currentUser.uid,
        isPublished: false,
        isNewUser: false,
        genderId: genderId,
      );

      await _firestore
          .collection('users')
          .doc(currentUser.uid)
          .set(profile.toJson());
      return right(unit);
    } on FirebaseAuthException catch (e, stacktrace) {
      _logger.d(stacktrace);
      _logger.d(e.message);
      return left(const AuthFailure.serverError());
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
}
