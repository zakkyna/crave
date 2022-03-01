part of 'chatroom_bloc.dart';

@freezed
class ChatroomState with _$ChatroomState {
  const factory ChatroomState.initial() = _Initial;
  const factory ChatroomState.loading() = _Loading;
  const factory ChatroomState.sendingChat() = _SendingChat;
  const factory ChatroomState.getChatSuccess(ChatResponse chatResponse) =
      _GetChatSuccess;
  const factory ChatroomState.failure(ChatFailure failure) = _Failure;
  const factory ChatroomState.sendChatSuccess(SendChat content) =
      _SendChatSuccess;
  const factory ChatroomState.readMessageSuccess(bool response) =
      _ReadMessageSuccess;
  const factory ChatroomState.viewProfileSuccess(Post post) =
      _ViewProfileSuccess;
}
