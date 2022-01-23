import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crave_app/application/auth/auth_bloc.dart';

class AuthListenerWidget extends StatelessWidget {
  final Widget authenticated;
  final Widget unauthenticated;
  final Widget newUser;
  const AuthListenerWidget({
    Key? key,
    required this.authenticated,
    required this.unauthenticated,
    required this.newUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          authenticated: (_) {
            context.read<AuthBloc>().add(const AuthEvent.postToken());
            return authenticated;
          },
          unauthenticated: (_) => unauthenticated,
          newUser: (_) => newUser,
        );
      },
    );
  }
}
