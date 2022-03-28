import 'package:freezed_annotation/freezed_annotation.dart';
part 'setting_failure.freezed.dart';

@freezed
class SettingFailure with _$SettingFailure {
  const factory SettingFailure.unexpected() = _Unexpected;
  const factory SettingFailure.noInternet() = _NoInternet;
  const factory SettingFailure.unauthenticated() = _Unauthenticated;
  const factory SettingFailure.serverError(String message) = _ServerError;
}
