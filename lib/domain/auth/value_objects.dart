import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/core/failures.dart';
import 'package:crave_app/domain/core/value_objects.dart';
import 'package:crave_app/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      ValueValidators.validateEmail(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      ValueValidators.validatePassword(input),
    );
  }

  const Password._(this.value);
}

class RetypePassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RetypePassword(String input, String previous) {
    return RetypePassword._(
      ValueValidators.validateRetypePassword(input, previous),
    );
  }

  const RetypePassword._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(
      ValueValidators.validateMinStringLength(input, 2),
    );
  }

  const FullName._(this.value);
}

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    return UserName._(
      ValueValidators.validateMinStringLength(input, 2),
    );
  }

  const UserName._(this.value);
}
