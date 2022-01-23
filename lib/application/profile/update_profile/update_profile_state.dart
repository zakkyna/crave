part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState({
    required Option<Profile> profileOption,
    required bool isLoading,
    required Bio bio,
    required List<String> photos,
    required Option<Either<ProfileFailure, Unit>>
        updateProfileFailureOrSuccessOption,
    required Option<Either<ProfileFailure, String>>
        pickPhotoFailureOrSuccessOption,
    required Option<Either<ProfileFailure, String>>
        uploadPhotoFailureOrSuccessOption,
    required Option<Either<ProfileFailure, String>>
        deletePhotoFailureOrSuccessOption,
  }) = _UpdateProfileState;

  factory UpdateProfileState.initial() => UpdateProfileState(
        isLoading: false,
        bio: Bio(''),
        photos: [],
        updateProfileFailureOrSuccessOption: none(),
        pickPhotoFailureOrSuccessOption: none(),
        uploadPhotoFailureOrSuccessOption: none(),
        deletePhotoFailureOrSuccessOption: none(),
        profileOption: none(),
      );
}
