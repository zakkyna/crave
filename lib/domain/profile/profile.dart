// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/profile/profile_location.dart';
import 'package:crave_app/domain/settings/setting_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String uid,
    required bool isPublished,
    required bool isNewUser,
    @JsonKey(includeIfNull: true, defaultValue: '')
        required String? phoneNumber,
    String? bio,
    String? city,
    String? state,
    String? address,
    bool? isEnableInstantChat,
    int? genderId,
    String? profilePicture,
    List<String>? photos,
    bool? isOnline,
    @TimeStampConverter() Timestamp? lastSeen,
    ProfileLocation? location,
    SettingData? settingData,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

class TimeStampConverter implements JsonConverter<Timestamp?, Timestamp?> {
  const TimeStampConverter();

  @override
  Timestamp? fromJson(Timestamp? dateTime) => dateTime;

  @override
  Timestamp? toJson(Timestamp? timeStamp) => timeStamp;
}

extension ProfileExtension on Profile {
  types.User toTypes() {
    return types.User(
      id: uid,
      imageUrl: profilePicture,
      lastSeen: lastSeen?.millisecondsSinceEpoch,
    );
  }
}
