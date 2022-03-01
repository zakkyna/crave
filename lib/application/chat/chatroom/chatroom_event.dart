part of 'chatroom_bloc.dart';

@freezed
class ChatroomEvent with _$ChatroomEvent {
  const factory ChatroomEvent.getChat(ChatRequest chatRequest) = _GetChat;
  const factory ChatroomEvent.sendMessage({
    required SendChat content,
    required String roomId,
    required String opponentId,
  }) = _SendMessage;

  const factory ChatroomEvent.readMessage({
    required String roomId,
  }) = _ReadMessage;

  const factory ChatroomEvent.viewProfile({
    required String userId,
  }) = _ViewProfile;
}
