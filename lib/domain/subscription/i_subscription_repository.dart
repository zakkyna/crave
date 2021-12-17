import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:crave_app/domain/subscription/subscription_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';

abstract class ISubscriptionRepository {
  Future<Option<Subscription>> getMySubscription();
  Future<Either<SubscriptionFailure, IList<Subscription>>>
      getListSubscription();
}
