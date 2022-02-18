import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
part 'purchase_request.freezed.dart';

@freezed
class PurchaseRequest with _$PurchaseRequest {
  const factory PurchaseRequest({
    required void Function(List<PurchaseDetails>)? onData,
    Function(dynamic)? onError,
    void Function()? onDone,
  }) = _PurchaseRequest;
}
