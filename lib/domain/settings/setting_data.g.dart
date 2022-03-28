// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingData _$$_SettingDataFromJson(Map<String, dynamic> json) =>
    _$_SettingData(
      seeking: (json['seeking'] as List<dynamic>).map((e) => e as int).toList(),
      pushNotification: json['push_notification'] as bool,
      newMessageAlert: json['new_message_alert'] as bool,
      likeNotification: json['like_notification'] as bool,
      chatTimerNotification: json['chat_timer_notification'] as bool,
    );

Map<String, dynamic> _$$_SettingDataToJson(_$_SettingData instance) =>
    <String, dynamic>{
      'seeking': instance.seeking,
      'push_notification': instance.pushNotification,
      'new_message_alert': instance.newMessageAlert,
      'like_notification': instance.likeNotification,
      'chat_timer_notification': instance.chatTimerNotification,
    };
