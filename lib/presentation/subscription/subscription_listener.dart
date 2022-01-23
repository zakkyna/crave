import 'package:crave_app/application/subscription/subscription_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubscriptionListener extends StatelessWidget {
  final Widget subscribed;
  final Widget unsubscribed;
  const SubscriptionListener({
    Key? key,
    required this.subscribed,
    required this.unsubscribed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .read<SubscriptionBloc>()
        .add(const SubscriptionEvent.checkSubscription());
    return Scaffold(
      body: BlocBuilder<SubscriptionBloc, SubscriptionState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            subscribed: (_) => subscribed,
            unsubscribed: (_) => unsubscribed,
            failure: (value) => Scaffold(
              body: RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<SubscriptionBloc>()
                      .add(const SubscriptionEvent.checkSubscription());
                },
                child: const SingleChildScrollView(
                  child: Expanded(
                    child: Center(
                      child: Text('Something went wrong, please try again'),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
