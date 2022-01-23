part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required bool isPushNotificationActive,
    required bool isNewMessageAlertActive,
    required bool isLikeNotificationActive,
    required bool isChatTimerNotificationActive,
  }) = _NotificationState;

  factory NotificationState.initial() => const _NotificationState(
        isPushNotificationActive: false,
        isNewMessageAlertActive: false,
        isLikeNotificationActive: false,
        isChatTimerNotificationActive: false,
      );
}
