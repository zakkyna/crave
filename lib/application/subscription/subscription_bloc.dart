import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/subscription/i_subscription_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

@lazySingleton
class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final ISubscriptionRepository _subscriptionRepository;
  SubscriptionBloc(this._subscriptionRepository) : super(const _Initial()) {
    on<SubscriptionEvent>((event, emit) async {
      await event.map(
        subsCheck: (_event) async {
          final mySubs = await _subscriptionRepository.getMySubscription();
          mySubs.match(
            (t) => emit(const SubscriptionState.subscribed()),
            () => emit(const SubscriptionState.unsubscribed()),
          );
        },
        buySubs: (_event) async {},
      );
    });
  }
}
