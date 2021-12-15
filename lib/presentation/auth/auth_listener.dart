import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crave_app/application/auth/auth_bloc.dart';

class AuthListenerWidget extends StatelessWidget {
  final Widget authenticated;
  final Widget unauthenticated;
  const AuthListenerWidget({
    Key? key,
    required this.authenticated,
    required this.unauthenticated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          authenticated: (_) => authenticated,
          unauthenticated: (_) => unauthenticated,
        );
      },
    );
  }
}
