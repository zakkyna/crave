import 'package:crave_app/application/subscription/subscription_bloc.dart';
import 'package:crave_app/injection.dart';
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
    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
      bloc: getIt<SubscriptionBloc>()..add(const SubscriptionEvent.subsCheck()),
      builder: (context, state) {
        return state.map(
          initial: (_) => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          subscribed: (_) => subscribed,
          unsubscribed: (_) => unsubscribed,
        );
      },
    );
  }
}
