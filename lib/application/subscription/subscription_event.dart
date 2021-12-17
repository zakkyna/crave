part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.subsCheck() = _SubCheck;
  const factory SubscriptionEvent.buySubs(int id) = _BuySubs;
}
