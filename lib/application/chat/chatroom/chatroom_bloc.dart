import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/chat/chat_failure.dart';
import 'package:crave_app/domain/chat/chat_request.dart';
import 'package:crave_app/domain/chat/chat_response.dart';
import 'package:crave_app/domain/chat/i_chat_repository.dart';
import 'package:crave_app/domain/chat/send_chat.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chatroom_event.dart';
part 'chatroom_state.dart';
part 'chatroom_bloc.freezed.dart';

@lazySingleton
class ChatroomBloc extends Bloc<ChatroomEvent, ChatroomState> {
  final IChatRepository _chatRepository;
  ChatroomBloc(this._chatRepository) : super(const _Initial()) {
    on<ChatroomEvent>(
      (event, emit) async {
        await event.map(
          getChat: (_event) async {
            emit(const ChatroomState.loading());
            final failureOrSuccess =
                await _chatRepository.getChatMessages(_event.chatRequest);
            failureOrSuccess.fold(
              (failure) => emit(ChatroomState.failure(failure)),
              (chatResponse) =>
                  emit(ChatroomState.getChatSuccess(chatResponse)),
            );
          },
          sendMessage: (_event) async {
            emit(const ChatroomState.sendingChat());
            final failureOrSuccess = await _chatRepository.sendMessage(
              content: _event.content,
              roomId: _event.roomId,
              opponentId: _event.opponentId,
            );
            failureOrSuccess.fold(
              (failure) => emit(ChatroomState.failure(failure)),
              (chatResponse) =>
                  emit(ChatroomState.sendChatSuccess(chatResponse)),
            );
          },
          readMessage: (_event) async {
            emit(const ChatroomState.loading());
            final failureOrSuccess =
                await _chatRepository.readMessage(roomId: _event.roomId);
            failureOrSuccess.fold(
              (failure) => emit(ChatroomState.failure(failure)),
              (chatResponse) =>
                  emit(ChatroomState.readMessageSuccess(chatResponse)),
            );
          },
          viewProfile: (_event) async {
            emit(const ChatroomState.loading());
            final failureOrSuccess =
                await _chatRepository.viewProfile(userId: _event.userId);
            failureOrSuccess.fold(
              (failure) => emit(ChatroomState.failure(failure)),
              (chatResponse) =>
                  emit(ChatroomState.viewProfileSuccess(chatResponse)),
            );
          },
          uploadAttachment: (_event) async {
            emit(const ChatroomState.loading());
            final failureOrSuccess = await _chatRepository.uploadAttachment(
              roomId: _event.roomId,
              path: _event.path,
            );
            failureOrSuccess.fold(
              (failure) => emit(ChatroomState.failure(failure)),
              (chatResponse) =>
                  emit(ChatroomState.uploadAttachmentSuccess(chatResponse)),
            );
          },
        );
      },
    );
  }
}
