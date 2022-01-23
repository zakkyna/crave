// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomModel _$$_RoomModelFromJson(Map<String, dynamic> json) => _$_RoomModel(
      id: json['id'] as String,
      createdAt:
          const TimeStampConverter().fromJson(json['created_at'] as Timestamp),
      updatedAt:
          const TimeStampConverter().fromJson(json['updated_at'] as Timestamp),
      lastChatAt: const TimeStampNullConverter()
          .fromJson(json['last_chat_at'] as Timestamp?),
      members: (json['members'] as List<dynamic>)
          .map((e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList(),
      memberIds: (json['member_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lastChat: const ChatModelConverter()
          .fromJson(json['last_chat'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_RoomModelToJson(_$_RoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': const TimeStampConverter().toJson(instance.createdAt),
      'updated_at': const TimeStampConverter().toJson(instance.updatedAt),
      'last_chat_at':
          const TimeStampNullConverter().toJson(instance.lastChatAt),
      'members': instance.members.map((e) => e.toJson()).toList(),
      'member_ids': instance.memberIds,
      'last_chat': const ChatModelConverter().toJson(instance.lastChat),
    };
