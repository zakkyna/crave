part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.loadSuccess(SettingData settingData) =
      _LoadSuccess;
  const factory SettingsState.loadFailure(SettingFailure failure) =
      _LoadFailure;
  const factory SettingsState.updateSuccess(SettingData settingData) =
      _UpdateSuccess;
  const factory SettingsState.updateFailure(SettingFailure failure) =
      _UpdateFailure;
}
