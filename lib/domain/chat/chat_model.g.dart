// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: json['created_at'] as int?,
      id: json['id'] as String?,
      status: json['status'] as String?,
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'author': instance.author?.toJson(),
      'created_at': instance.createdAt,
      'id': instance.id,
      'status': instance.status,
      'text': instance.text,
      'type': instance.type,
    };

_$_Author _$$_AuthorFromJson(Map<String, dynamic> json) => _$_Author(
      firstName: json['firstName'] as String?,
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
    };
