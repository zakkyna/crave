import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

Subscription subscriptionFromJson(String str) =>
    Subscription.fromJson(json.decode(str));

String subscriptionToJson(Subscription data) => json.encode(data.toJson());

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    required String id,
    required double price,
    required String title,
    required String description,
    required String bannerUrl,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}
