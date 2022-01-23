import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/subscription/i_subscription_repository.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:crave_app/domain/subscription/subscription_failure.dart';
import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:injectable/injectable.dart';
import 'package:ntp/ntp.dart';

@LazySingleton(as: ISubscriptionRepository)
class SubscriptionRepository implements ISubscriptionRepository {
  final FirebaseAuth _firebaseAuth;

  final FirebaseFirestore _firestore;

  SubscriptionRepository(
    this._firebaseAuth,
    this._firestore,
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
      final subsDoc =
          await _firestore.collection('subscription').doc(user.uid).get();
      if (subsDoc.data() == null) {
        if (isMale) {
          return right(false);
        } else {
          return right(true);
        }
      } else {
        return right((subsDoc.data()!['current_expired'] as Timestamp)
            .toDate()
            .isBefore(await NTP.now()));
      }
    } catch (e) {
      return left(const SubscriptionFailure.unexpected());
    }
  }
}
