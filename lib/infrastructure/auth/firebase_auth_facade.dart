import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/auth/value_objects.dart';
import 'package:crave_app/domain/auth/user.dart';
import 'package:injectable/injectable.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(this._firebaseAuth) : super();
  @override
  Future<Option<User>> getSignedInUser() async {
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() {
    // TODO: implement signInWithApple
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumberOtp({
    required String verificationId,
    required OtpCode otpCode,
  }) async {
    try {
      _firebaseAuth.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: otpCode.getOrCrash(),
        ),
      );
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> verifyPhoneNumber(
      {required PhoneNumber phoneNumber}) async {
    try {
      String? verifId;

      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber.getOrCrash(),
        timeout: const Duration(seconds: 5),
        verificationCompleted: (AuthCredential credential) {
          _firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: (exception) {
          exception;
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          verifId = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verifId = verificationId;
        },
      );
      if (verifId == null) {
        return right(verifId!);
      }
      return right(verifId!);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
