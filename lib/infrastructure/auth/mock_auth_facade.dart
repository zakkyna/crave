import 'package:injectable/injectable.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:crave_app/domain/auth/value_objects.dart';
import 'package:crave_app/domain/auth/user.dart';

@LazySingleton(as: IAuthFacade)
class MockAuthFacade implements IAuthFacade {
  @override
  Future<Option<User>> getSignedInUser() async {
    // TODO: implement getSignedInUser
    return none();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required FullName fullName,
      required EmailAddress emailAddress,
      required Password password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
