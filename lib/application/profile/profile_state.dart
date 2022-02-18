part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required Option<Profile> currentProfileOption,
    required bool isCompleted,
    required Option<ProfileFailure> failureOption,
    required Option<Coordinate> coordinateOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        isLoading: true,
        currentProfileOption: none(),
        failureOption: none(),
        isCompleted: false,
        coordinateOption: none(),
      );
}
