import 'dart:async';

import 'package:crave_app/domain/subscription/purchase_request.dart';
import 'package:crave_app/domain/subscription/purchase_stream.dart';
import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:crave_app/domain/subscription/subscription_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

abstract class ISubscriptionRepository {
  Future<Either<SubscriptionFailure, bool>> isUserSubscribedOrNotMale();
  Future<Option<Subscription>> getMySubscription();
  Future<Either<SubscriptionFailure, IList<Subscription>>>
      getListSubscription();

  Future<Either<SubscriptionFailure, PurchaseStream>> getPurchaseStream(
    PurchaseRequest purchaseRequest,
  );
  Future<Either<SubscriptionFailure, IList<ProductDetails>>> getProduct();

  Future<Either<SubscriptionFailure, Unit>> buyProduct(
    ProductDetails productDetails,
  );

  Future<Either<SubscriptionFailure, Unit>> buyProductById(
    String productId,
  );

  Future<Either<SubscriptionFailure, PurchaseDetails>> verifyPurchase(
    PurchaseDetails purchaseDetails,
  );

  Future<Either<SubscriptionFailure, bool>> completePurchase(
    PurchaseDetails purchaseDetails,
  );
}
