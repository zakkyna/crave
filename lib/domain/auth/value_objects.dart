import 'package:crave_app/domain/core/entity/failures.dart';
import 'package:crave_app/domain/core/entity/value_objects.dart';
import 'package:crave_app/domain/core/entity/value_validators.dart';
import 'package:fpdart/fpdart.dart';

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      ValueValidators.validatePhone(input),
    );
  }

  const PhoneNumber._(this.value);
}

class OtpCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory OtpCode(String input) {
    return OtpCode._(
      ValueValidators.validatePinOrOtp(value: input, length: 6),
    );
  }

  const OtpCode._(this.value);
}

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
