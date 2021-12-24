import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_failure.freezed.dart';

@freezed
class ChatFailure with _$ChatFailure {
  const factory ChatFailure.unexpected() = _Unexpected;
  const factory ChatFailure.serverError() = _ServerError;
  const factory ChatFailure.unauthenticated() = _Unauthenticated;
  const factory ChatFailure.unauthorized() = _Unauthorized;
  const factory ChatFailure.expired() = _Expired;
}
