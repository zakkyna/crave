import 'package:freezed_annotation/freezed_annotation.dart';
part 'setting_data.freezed.dart';
part 'setting_data.g.dart';

@freezed
abstract class SettingData with _$SettingData {
  const factory SettingData({
    required List<int> seeking,
    required bool pushNotification,
    required bool newMessageAlert,
    required bool likeNotification,
    required bool chatTimerNotification,
  }) = _SettingData;

  factory SettingData.fromJson(Map<String, dynamic> json) =>
      _$SettingDataFromJson(json);
}
