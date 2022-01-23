import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/chat/chat_model.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
class RoomModel with _$RoomModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory RoomModel({
    required String id,
    @TimeStampConverter() required Timestamp createdAt,
    @TimeStampConverter() required Timestamp updatedAt,
    @TimeStampNullConverter() Timestamp? lastChatAt,
    required List<Profile> members,
    required List<String> memberIds,
    @ChatModelConverter() ChatModel? lastChat,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}

class TimeStampConverter implements JsonConverter<Timestamp, Timestamp> {
  const TimeStampConverter();

  @override
  Timestamp fromJson(Timestamp timestamp) {
    return timestamp;
  }

  @override
  Timestamp toJson(Timestamp timeStamp) {
    return timeStamp;
  }
}

class TimeStampNullConverter implements JsonConverter<Timestamp?, Timestamp?> {
  const TimeStampNullConverter();

  @override
  Timestamp? fromJson(Timestamp? timestamp) {
    return timestamp;
  }

  @override
  Timestamp? toJson(Timestamp? timeStamp) {
    return timeStamp;
  }
}

class ChatModelConverter
    implements JsonConverter<ChatModel?, Map<String, dynamic>?> {
  const ChatModelConverter();

  @override
  ChatModel? fromJson(Map<String, dynamic>? json) {
    return json == null || json.isEmpty ? null : ChatModel.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ChatModel? chat) {
    return chat?.toJson();
  }
}

extension RoomModelExtension on RoomModel {
  types.Room toTypes(String uid) {
    return types.Room(
      id: id,
      createdAt: createdAt.millisecondsSinceEpoch,
      updatedAt: updatedAt.millisecondsSinceEpoch,
      type: types.RoomType.direct,
      users: members.map((profile) => profile.toTypes()).toList(),
      imageUrl: members
          .firstWhereOrNull((profile) => profile.uid != uid)
          ?.profilePicture,
    );
  }
}
