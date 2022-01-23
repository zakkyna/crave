part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.checkSubscription() = _CheckSubscription;
  const factory SubscriptionEvent.buySubs(int id) = _BuySubs;
}
