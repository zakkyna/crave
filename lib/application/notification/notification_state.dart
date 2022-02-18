part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required Option<StreamSubscription> notificationSubscription,
    required bool isLoading,
    required bool isInitialized,
    required bool isPushNotificationActive,
    required bool isNewMessageAlertActive,
    required bool isLikeNotificationActive,
    required bool isChatTimerNotificationActive,
  }) = _NotificationState;

  factory NotificationState.initial() => NotificationState(
        notificationSubscription: none(),
        isLoading: false,
        isInitialized: false,
        isPushNotificationActive: false,
        isNewMessageAlertActive: false,
        isLikeNotificationActive: false,
        isChatTimerNotificationActive: false,
      );
}
