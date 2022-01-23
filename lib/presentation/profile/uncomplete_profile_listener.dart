import 'package:crave_app/application/profile/profile_bloc.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UncompleteProfileListener extends StatelessWidget {
  final Widget Function(Profile) uncompleteProfileBuilder;
  final Widget Function(Profile) completedProfileBuilder;
  const UncompleteProfileListener({
    Key? key,
    required this.uncompleteProfileBuilder,
    required this.completedProfileBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.getCurrentProfile());
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final isfailure = state.failureOption.isSome();
        final profile = state.currentProfileOption.match((t) => t, () => null);
        if (state.isLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (isfailure || profile == null) {
          return Scaffold(
            body: RefreshIndicator(
              onRefresh: () async {
                context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.getCurrentProfile());
              },
              child: const Center(
                child: Text('Something wrong, pull to refresh'),
              ),
            ),
          );
        }
        if (state.isCompleted) {
          return completedProfileBuilder(profile);
        } else {
          return uncompleteProfileBuilder(profile);
        }
      },
    );
  }
}
