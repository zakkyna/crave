part of 'purchase_bloc.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState({
    required bool isLoading,
    required Option<PurchaseStream> purchaseStream,
    required Option<IList<ProductDetails>> getProductOption,
    required Option<Either<SubscriptionFailure, Unit>>
        buyProductFailureOrSuccessOption,
    required Option<Either<SubscriptionFailure, PurchaseDetails>>
        verifyPurchaseFailureOrSuccessOption,
    required Option<Either<SubscriptionFailure, bool>>
        completePurchaseFailureOrSuccessOption,
  }) = _PurchaseState;

  factory PurchaseState.initial() => _PurchaseState(
        isLoading: false,
        purchaseStream: none(),
        getProductOption: none(),
        buyProductFailureOrSuccessOption: none(),
        verifyPurchaseFailureOrSuccessOption: none(),
        completePurchaseFailureOrSuccessOption: none(),
      );
}
