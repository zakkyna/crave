import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:crave_app/domain/auth/user.dart';
import 'package:crave_app/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, String>> verifyPhoneNumber({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumberOtp({
    required String verificationId,
    required OtpCode otpCode,
  });
  Future<Either<AuthFailure, Unit>> signInWithApple();
  Future<void> signOut();
}
