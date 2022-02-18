import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
part 'purchase_stream.freezed.dart';

@freezed
class PurchaseStream with _$PurchaseStream {
  const factory PurchaseStream({
    required StreamSubscription<List<PurchaseDetails>> subscription,
  }) = _PurchaseStream;
}
