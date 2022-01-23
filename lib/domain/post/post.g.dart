// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      uid: json['uid'] as String,
      isPublished: json['is_published'] as bool,
      genderId: json['gender_id'] as int,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      location: json['location'] == null
          ? null
          : ProfileLocation.fromJson(json['location'] as Map<String, dynamic>),
      bio: json['bio'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      state: json['state'] as String?,
      likedBy:
          (json['liked_by'] as List<dynamic>).map((e) => e as String).toList(),
      dismissedBy: json['dismissed_by'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'uid': instance.uid,
      'is_published': instance.isPublished,
      'gender_id': instance.genderId,
      'photos': instance.photos,
      'location': instance.location,
      'bio': instance.bio,
      'city': instance.city,
      'address': instance.address,
      'state': instance.state,
      'liked_by': instance.likedBy,
      'dismissed_by': instance.dismissedBy,
    };
