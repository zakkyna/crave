part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getCurrentProfile() = _GetCurrentProfile;
  const factory ProfileEvent.updateLocation(Coordinate coordinate) =
      _UpdateLocation;
}
