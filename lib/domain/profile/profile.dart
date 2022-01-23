import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/profile/profile_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Profile({
    required String uid,
    required bool isPublished,
    required bool isNewUser,
    String? bio,
    String? city,
    String? state,
    String? address,
    int? genderId,
    String? profilePicture,
    List<String>? photos,
    bool? isOnline,
    @TimeStampConverter() Timestamp? lastSeen,
    ProfileLocation? location,
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
