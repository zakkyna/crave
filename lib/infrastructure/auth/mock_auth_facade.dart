import 'package:injectable/injectable.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:crave_app/domain/auth/value_objects.dart';
import 'package:crave_app/domain/auth/user.dart';

// @LazySingleton(as: IAuthFacade)
class MockAuthFacade implements IAuthFacade {
  @override
  Future<Option<User>> getSignedInUser() async {
    // TODO: implement getSignedInUser
    return none();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumberOtp(
      {required String verificationId, required OtpCode otpCode}) {
    // TODO: implement signInWithPhoneNumberOtp
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, String>> verifyPhoneNumber(
      {required PhoneNumber phoneNumber}) {
    // TODO: implement verifyPhoneNumber
    throw UnimplementedError();
  }
}
