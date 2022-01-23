import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_failure.freezed.dart';

@freezed
class NotificationFailure with _$NotificationFailure {
  const factory NotificationFailure.noInternet() = _NoInternet;
  const factory NotificationFailure.serverError(String message) = _ServerError;
  const factory NotificationFailure.unexpected() = _Unexpected;
  const factory NotificationFailure.unauthenticated() = _Unauthenticated;
}
