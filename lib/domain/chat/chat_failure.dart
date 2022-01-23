import 'package:crave_app/domain/chat/send_chat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_failure.freezed.dart';

@freezed
class ChatFailure with _$ChatFailure {
  const factory ChatFailure.unexpected() = _Unexpected;
  const factory ChatFailure.noInternet() = _NoInternet;
  const factory ChatFailure.serverError(String message) = _ServerError;
  const factory ChatFailure.unauthenticated() = _Unauthenticated;
  const factory ChatFailure.unauthorized() = _Unauthorized;
  const factory ChatFailure.userNotFound() = _UserNotFound;
  const factory ChatFailure.expired() = _Expired;
  const factory ChatFailure.messageNotSent({
    required ChatFailure failure,
    required SendChat content,
  }) = _MessageNotSent;
}
