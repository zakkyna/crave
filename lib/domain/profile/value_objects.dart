import 'package:crave_app/domain/core/entity/failures.dart';
import 'package:crave_app/domain/core/entity/value_objects.dart';
import 'package:crave_app/domain/core/entity/value_validators.dart';
import 'package:fpdart/fpdart.dart';

class Bio extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Bio(String input) {
    return Bio._(
      ValueValidators.validateStringNotEmpty(input),
    );
  }

  const Bio._(this.value);
}
