import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_response.freezed.dart';

@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required Stream<List<Message>> chatsStream,
  }) = _ChatResponse;
}
