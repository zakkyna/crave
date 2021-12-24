import 'package:crave_app/domain/subscription/i_subscription_repository.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/subscription/subscription_failure.dart';
import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISubscriptionRepository)
class SubscriptionRepository implements ISubscriptionRepository {
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
}
