import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
part 'send_chat.freezed.dart';

@freezed
class SendChat with _$SendChat {
  const factory SendChat({
    required Message message,
  }) = _SendChat;
}
