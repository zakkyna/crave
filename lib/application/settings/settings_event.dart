part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadData() = _LoadData;
  const factory SettingsEvent.saveSeeking(List<int> seeking) = _SaveSeeking;
  const factory SettingsEvent.saveNotification({
    required bool pushNotification,
    required bool chatTimerNotification,
    required bool likeNotification,
    required bool newMessageAlert,
  }) = _SaveNotification;
}
