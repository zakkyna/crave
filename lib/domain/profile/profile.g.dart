// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      uid: json['uid'] as String,
      isPublished: json['is_published'] as bool,
      isNewUser: json['is_new_user'] as bool,
      phoneNumber: json['phone_number'] as String? ?? '',
      bio: json['bio'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      address: json['address'] as String?,
      genderId: json['gender_id'] as int?,
      profilePicture: json['profile_picture'] as String?,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isOnline: json['is_online'] as bool?,
      lastSeen:
          const TimeStampConverter().fromJson(json['last_seen'] as Timestamp?),
      location: json['location'] == null
          ? null
          : ProfileLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'is_published': instance.isPublished,
      'is_new_user': instance.isNewUser,
      'phone_number': instance.phoneNumber,
      'bio': instance.bio,
      'city': instance.city,
      'state': instance.state,
      'address': instance.address,
      'gender_id': instance.genderId,
      'profile_picture': instance.profilePicture,
      'photos': instance.photos,
      'is_online': instance.isOnline,
      'last_seen': const TimeStampConverter().toJson(instance.lastSeen),
      'location': instance.location,
    };
