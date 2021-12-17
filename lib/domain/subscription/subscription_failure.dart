import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_failure.freezed.dart';

@freezed
class SubscriptionFailure with _$SubscriptionFailure {
  const factory SubscriptionFailure.noInternet() = _NoInternet;
  const factory SubscriptionFailure.serverError() = _ServerError;
  const factory SubscriptionFailure.unexpected() = _Unexpected;
}
