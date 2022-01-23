import 'package:crave_app/domain/profile/profile.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:crave_app/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<Profile>> getSignedInUserProfile();
  Future<Either<AuthFailure, String>> verifyPhoneNumber({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, Profile>> signInWithPhoneNumberOtp({
    required String verificationId,
    required OtpCode otpCode,
  });
  Future<Either<AuthFailure, Profile>> signInWithApple();
  Future<Either<AuthFailure, Unit>> registerUser({
    required int genderId,
  });
  Future<void> signOut();
}
