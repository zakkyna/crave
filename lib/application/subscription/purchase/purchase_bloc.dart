import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/subscription/i_subscription_repository.dart';
import 'package:crave_app/domain/subscription/purchase_request.dart';
import 'package:crave_app/domain/subscription/purchase_stream.dart';
import 'package:crave_app/domain/subscription/subscription_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';

part 'purchase_event.dart';
part 'purchase_state.dart';
part 'purchase_bloc.freezed.dart';

@lazySingleton
class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  final ISubscriptionRepository _subscriptionRepository;
  PurchaseBloc(this._subscriptionRepository) : super(PurchaseState.initial()) {
    on<PurchaseEvent>((event, emit) async {
      await event.map(
        getPurchaseStream: (_event) async {
          if (state.purchaseStream.isNone()) {
            final purchaseRequest = PurchaseRequest(
              onData: (purchaseDetailsList) async {
                for (var purchaseDetails in purchaseDetailsList) {
                  if (purchaseDetails.status == PurchaseStatus.purchased) {
                    add(
                      PurchaseEvent.verifyPurchase(purchaseDetails),
                    );
                  }

                  if (purchaseDetails.pendingCompletePurchase) {
                    add(
                      PurchaseEvent.completePurchase(purchaseDetails),
                    );
                  }
                }
              },
              onError: _event.onError,
              onDone: () {},
            );
            final failureOrSuccess =
                await _subscriptionRepository.getPurchaseStream(
              purchaseRequest,
            );
            final purchaseStream = failureOrSuccess.match(
              (l) {
                print('failure : $l');
                return null;
              },
              (r) => r,
            );
            emit(state.copyWith(purchaseStream: optionOf(purchaseStream)));
          }
        },
        getProducts: (_event) async {
          final failureOrSuccess = await _subscriptionRepository.getProduct();
          final products = failureOrSuccess.match(
            (l) => null,
            (r) => r,
          );
          emit(state.copyWith(getProductOption: optionOf(products)));
        },
        buyProduct: (_event) async {
          emit(state.copyWith(isLoading: true));
          final productDetail =
              state.getProductOption.match((t) => t, () => null);
          Either<SubscriptionFailure, Unit>? failureOrSuccess;
          if (productDetail == null) {
            failureOrSuccess = await _subscriptionRepository.buyProductById(
              _event.productId,
            );
          } else {
            final detail = productDetail
                .firstWhereOrNull((element) => element.id == _event.productId);
            if (detail != null) {
              failureOrSuccess = await _subscriptionRepository.buyProduct(
                detail,
              );
            } else {
              failureOrSuccess = await _subscriptionRepository.buyProductById(
                _event.productId,
              );
            }
          }

          emit(
            state.copyWith(
              isLoading: false,
              buyProductFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
        verifyPurchase: (_event) async {
          emit(
            state.copyWith(
              isLoading: true,
              buyProductFailureOrSuccessOption: none(),
            ),
          );
          final failureOrSuccess = await _subscriptionRepository.verifyPurchase(
            _event.purchaseDetails,
          );
          emit(
            state.copyWith(
              isLoading: false,
              verifyPurchaseFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
        completePurchase: (_event) async {
          emit(state.copyWith(
            isLoading: true,
            buyProductFailureOrSuccessOption: none(),
            verifyPurchaseFailureOrSuccessOption: none(),
          ));

          final failureOrSuccess =
              await _subscriptionRepository.completePurchase(
            _event.purchaseDetails,
          );
          emit(
            state.copyWith(
              isLoading: false,
              completePurchaseFailureOrSuccessOption:
                  optionOf(failureOrSuccess),
            ),
          );
        },
        clearError: (_event) async {
          emit(state.copyWith(
            buyProductFailureOrSuccessOption: none(),
            verifyPurchaseFailureOrSuccessOption: none(),
            completePurchaseFailureOrSuccessOption: none(),
          ));
        },
      );
    });
  }
}
