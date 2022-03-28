part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileEvent with _$UpdateProfileEvent {
  const factory UpdateProfileEvent.init(Profile profile) = _Init;
  const factory UpdateProfileEvent.bioChanged(String bioStr) = _BioChanged;
  const factory UpdateProfileEvent.addPhotoViaCamera() = _AddPhotoViaCamera;
  const factory UpdateProfileEvent.addPhotoViaGallery() = _AddPhotoViaGallery;
  const factory UpdateProfileEvent.uploadPhoto(String path) = _UploadPhoto;
  const factory UpdateProfileEvent.successUpload(String path) = _SuccessUpload;
  const factory UpdateProfileEvent.deletePhoto(String url) = _DeletePhoto;
  const factory UpdateProfileEvent.successDelete(String url) = _SuccessDelete;
  const factory UpdateProfileEvent.postPressed() = _PostPressed;
  const factory UpdateProfileEvent.hidePostPressed() = _HidePostPressed;
  const factory UpdateProfileEvent.reset() = _Reset;
}
