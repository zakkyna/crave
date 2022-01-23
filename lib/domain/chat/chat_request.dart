import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_request.freezed.dart';

@freezed
class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    required String roomId,
  }) = _ChatRequest;
}
