part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.init() = _Init;
  const factory NotificationEvent.loadSettings() = _LoadSettings;
  const factory NotificationEvent.togglePushNotification() =
      _TogglePushNotification;
}
