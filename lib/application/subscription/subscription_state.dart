part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial() = _Initial;
  const factory SubscriptionState.subscribed() = _Subscribed;
  const factory SubscriptionState.unsubscribed() = _Unsubscribed;
}
