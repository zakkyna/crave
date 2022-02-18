import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:crave_app/domain/subscription/i_subscription_repository.dart';
import 'package:crave_app/domain/subscription/purchase_request.dart';
import 'package:crave_app/domain/subscription/purchase_stream.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/subscription/subscription_failure.dart';
import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:ntp/ntp.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: ISubscriptionRepository)
class SubscriptionRepository implements ISubscriptionRepository {
  final Logger logger;
  final InAppPurchase _inappPurchase;
  final FirebaseAuth _firebaseAuth;
  final FirebaseFunctions _firebaseFunctions;
  final FirebaseFirestore _firestore;

  SubscriptionRepository(
    this.logger,
    this._firebaseAuth,
    this._firestore,
    this._firebaseFunctions,
    this._inappPurchase,
  );
  @override
  Future<Either<SubscriptionFailure, IList<Subscription>>>
      getListSubscription() {
    // TODO: implement getListSubscription
    throw UnimplementedError();
  }

  @override
  Future<Option<Subscription>> getMySubscription() {
    // TODO: implement getMySubscription
    throw UnimplementedError();
  }

  @override
  Future<Either<SubscriptionFailure, bool>> isUserSubscribedOrNotMale() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const SubscriptionFailure.unauthenticated());
      }
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final isMale = userDoc.data()!['gender_id'] == 1;
      final subsDoc = await _firestore
          .collection('subscription')
          .where(
            'userId',
            isEqualTo: user.uid,
          )
          .get();

      if (subsDoc.docs.isEmpty) {
        if (isMale) {
          return right(false);
        } else {
          return right(true);
        }
      } else {
        final expiryList = subsDoc.docs.map(
          (doc) {
            final data = doc.data();
            final expiryDate = data['expiryDate'] as Timestamp;
            return expiryDate;
          },
        ).toIList();
        final now = await NTP.now();
        final isNotExpired = expiryList.any((expiry) {
          final expiryDate = expiry.toDate();
          return expiryDate.isAfter(now);
        });
        return right(isNotExpired);
      }
    } catch (e) {
      return left(const SubscriptionFailure.unexpected());
    }
  }

  @override
  Future<Either<SubscriptionFailure, PurchaseStream>> getPurchaseStream(
      PurchaseRequest purchaseRequest) async {
    try {
      if (await _inappPurchase.isAvailable()) {
        final _stream = _inappPurchase.purchaseStream.listen(
          purchaseRequest.onData,
          onError: purchaseRequest.onError,
          onDone: purchaseRequest.onDone,
        );
        final _purchaseStream = PurchaseStream(subscription: _stream);
        return right(_purchaseStream);
      } else {
        return left(const SubscriptionFailure.unexpected());
      }
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const SubscriptionFailure.unexpected());
    }
  }

  @override
  Future<Either<SubscriptionFailure, IList<ProductDetails>>>
      getProduct() async {
    try {
      const ids = <String>{
        '1_one_week_subs',
        '2_one_month_subs',
        '3_one_year_subs',
      };
      final response = await _inappPurchase.queryProductDetails(ids);
      final products = response.productDetails.toIList();
      return right(products);
    } catch (e) {
      return left(const SubscriptionFailure.unexpected());
    }
  }

  @override
  Future<Either<SubscriptionFailure, Unit>> buyProduct(
      ProductDetails productDetails) async {
    try {
      final purchaseParam = PurchaseParam(productDetails: productDetails);
      await _inappPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      return right(unit);
    } catch (e) {
      return left(const SubscriptionFailure.unexpected());
    }
  }

  @override
  Future<Either<SubscriptionFailure, PurchaseDetails>> verifyPurchase(
    PurchaseDetails purchaseDetails,
  ) async {
    try {
      final callable = _firebaseFunctions.httpsCallable('verifyPurchase');
      final results = await callable({
        'source': purchaseDetails.verificationData.source,
        'verificationData':
            purchaseDetails.verificationData.serverVerificationData,
        'productId': purchaseDetails.productID,
      });
      if (results.data as bool) {
        return right(purchaseDetails);
      } else {
        return left(const SubscriptionFailure.verificationFailed());
      }
    } catch (e) {
      return left(const SubscriptionFailure.unexpected());
    }
  }

  @override
  Future<Either<SubscriptionFailure, bool>> completePurchase(
      PurchaseDetails purchaseDetails) async {
    try {
      _inappPurchase.completePurchase(purchaseDetails);
      return right(true);
    } catch (e) {
      return left(const SubscriptionFailure.unexpected());
    }
  }

  @override
  Future<Either<SubscriptionFailure, Unit>> buyProductById(
      String productId) async {
    try {
      final productDetailsResponse = await _inappPurchase.queryProductDetails(
        <String>{productId},
      );
      final productDetails = productDetailsResponse.productDetails.first;
      final purchaseParam = PurchaseParam(productDetails: productDetails);
      await _inappPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      return right(unit);
    } catch (e) {
      return left(const SubscriptionFailure.unexpected());
    }
  }
}
