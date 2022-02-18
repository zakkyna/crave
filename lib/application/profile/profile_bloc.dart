import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/profile/i_profile_repository.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/domain/profile/profile_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        getCurrentProfile: (_event) async {
          emit(state.copyWith(isLoading: true));
          final profile = await _profileRepository.getCurrentProfile();
          profile.match(
            (l) => emit(state.copyWith(
              isLoading: false,
              currentProfileOption: none(),
              failureOption: optionOf(l),
            )),
            (profile) {
              final isComplete = profile.photos != null ||
                  (profile.photos?.isNotEmpty ?? false) ||
                  profile.profilePicture != null;
              emit(
                state.copyWith(
                  isLoading: false,
                  isCompleted: isComplete,
                  currentProfileOption: optionOf(profile),
                  failureOption: none(),
                ),
              );
            },
          );
        },
        updateLocation: (_event) async {
          final failureOrSuccess =
              await _profileRepository.updateLocation(_event.coordinate);
          final coordinate = failureOrSuccess.match(
            (l) => null,
            (c) => c,
          );
          emit(
            state.copyWith(
              isLoading: false,
              coordinateOption: optionOf(coordinate),
            ),
          );
        },
      );
    });
  }
}
