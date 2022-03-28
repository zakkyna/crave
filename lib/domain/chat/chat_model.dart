import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    required Author? author,
    required int? createdAt,
    required String? id,
    required String? status,
    required String? text,
    required String? type,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    required String? firstName,
    required String id,
    required String? imageUrl,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

// class AuthorConverter implements JsonConverter<Author, Map<String, dynamic>> {
//   const AuthorConverter();

//   @override
//   Author fromJson(Map<String, dynamic> json) {
//     return Author.fromJson(json);
//   }

//   @override
//   Map<String, dynamic> toJson(Author author) {
//     return author.toJson();
//   }
// }
