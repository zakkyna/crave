import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/profile/i_profile_repository.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/domain/profile/profile_failure.dart';
import 'package:crave_app/domain/profile/value_objects.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';
part 'update_profile_bloc.freezed.dart';

@lazySingleton
class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final IProfileRepository _profileRepository;
  UpdateProfileBloc(
    this._profileRepository,
  ) : super(UpdateProfileState.initial()) {
    on<UpdateProfileEvent>(
      (event, emit) async {
        await event.map(
          init: (_event) async {
            emit(
              state.copyWith(
                profileOption: optionOf(_event.profile),
                bio: Bio(_event.profile.bio ?? ''),
                photos: _event.profile.photos ?? [],
              ),
            );
          },
          bioChanged: (_event) async {
            emit(
              state.copyWith(
                bio: Bio(_event.bioStr),
                pickPhotoFailureOrSuccessOption: none(),
                uploadPhotoFailureOrSuccessOption: none(),
              ),
            );
          },
          postPressed: (_event) async {
            emit(state.copyWith(isLoading: true));
            final currentProfile =
                state.profileOption.match((t) => t, () => null)!;
            final profile = currentProfile.copyWith(
              bio: state.bio.getOrNull(),
              photos: state.photos,
              profilePicture: state.photos.first,
              isPublished: true,
            );
            final failureOrSuccess =
                await _profileRepository.updateProfile(profile);
            emit(
              state.copyWith(
                updateProfileFailureOrSuccessOption: optionOf(failureOrSuccess),
                isLoading: false,
              ),
            );
          },
          addPhotoViaCamera: (_event) async {
            emit(state.copyWith(isLoading: true));

            final uploadFailureOrSuccess =
                await _profileRepository.pickPhotoViaCamera();

            emit(
              state.copyWith(
                isLoading: false,
                pickPhotoFailureOrSuccessOption: optionOf(
                  uploadFailureOrSuccess,
                ),
              ),
            );
          },
          addPhotoViaGallery: (_event) async {
            emit(state.copyWith(isLoading: true));

            final uploadFailureOrSuccess =
                await _profileRepository.pickPhotoViaGallery();

            emit(
              state.copyWith(
                isLoading: false,
                pickPhotoFailureOrSuccessOption: optionOf(
                  uploadFailureOrSuccess,
                ),
              ),
            );
          },
          uploadPhoto: (_event) async {
            emit(state.copyWith(
              isUploading: true,
              pickPhotoFailureOrSuccessOption: none(),
            ));

            final uploadFailureOrSuccess = await _profileRepository.uploadPhoto(
              _event.path,
            );

            emit(
              state.copyWith(
                isUploading: false,
                uploadPhotoFailureOrSuccessOption: optionOf(
                  uploadFailureOrSuccess,
                ),
              ),
            );
          },
          successUpload: (_event) {
            final photos = state.photos.append(_event.path).toList();
            emit(
              state.copyWith(
                isLoading: false,
                pickPhotoFailureOrSuccessOption: none(),
                uploadPhotoFailureOrSuccessOption: none(),
                photos: photos,
              ),
            );
          },
          deletePhoto: (_event) async {
            emit(state.copyWith(isLoading: true));
            final deleteFailureOrSuccess = await _profileRepository.deletePhoto(
              _event.url,
              _event.isLive,
            );
            emit(
              state.copyWith(
                isLoading: false,
                deletePhotoFailureOrSuccessOption: optionOf(
                  deleteFailureOrSuccess,
                ),
              ),
            );
          },
          successDelete: (_event) {
            final photos = state.photos.delete(_event.url).toList();
            emit(
              state.copyWith(
                isLoading: false,
                deletePhotoFailureOrSuccessOption: none(),
                photos: photos,
              ),
            );
          },
          reset: (_event) {
            emit(UpdateProfileState.initial());
          },
          hidePostPressed: (_event) async {
            emit(state.copyWith(isLoading: true));
            final currentProfile =
                state.profileOption.match((t) => t, () => null)!;
            final profile = currentProfile.copyWith(
              bio: state.bio.getOrNull(),
              photos: state.photos,
              profilePicture: state.photos.first,
              isPublished: false,
            );
            final failureOrSuccess =
                await _profileRepository.updateProfile(profile);
            emit(
              state.copyWith(
                updateProfileFailureOrSuccessOption: optionOf(failureOrSuccess),
                isLoading: false,
              ),
            );
          },
        );
      },
    );
  }
}
