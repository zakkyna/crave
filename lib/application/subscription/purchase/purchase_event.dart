part of 'purchase_bloc.dart';

@freezed
class PurchaseEvent with _$PurchaseEvent {
  const factory PurchaseEvent.getPurchaseStream({
    required Function(dynamic)? onError,
  }) = _GetPurchaseStream;
  const factory PurchaseEvent.getProducts() = _GetProducts;
  const factory PurchaseEvent.buyProduct(String productId) = _BuyProduct;
  const factory PurchaseEvent.verifyPurchase(PurchaseDetails purchaseDetails) =
      _VerifyPurchase;
  const factory PurchaseEvent.completePurchase(
      PurchaseDetails purchaseDetails) = _CompletePurchase;
  const factory PurchaseEvent.clearError() = _ClearError;
}
