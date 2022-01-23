part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.init() = _Init;
  const factory RegisterEvent.selectGender(int id) = _SelectGender;
  const factory RegisterEvent.registerSubmitted() = _RegisterSubmitted;
  const factory RegisterEvent.setLocationPermission() = _SetLocationPermission;
  const factory RegisterEvent.setNotificationPermission() =
      _SetNotificationPermission;
  const factory RegisterEvent.removeState() = _RemoveState;
}
