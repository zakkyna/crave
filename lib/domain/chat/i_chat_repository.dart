import 'package:crave_app/domain/chat/chat_failure.dart';
import 'package:crave_app/domain/chat/chat_request.dart';
import 'package:crave_app/domain/chat/chat_response.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:crave_app/domain/chat/send_chat.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:fpdart/fpdart.dart';

abstract class IChatRepository {
  Future<Either<ChatFailure, Stream<List<RoomModel>>>> getRoomsStream();
  Future<Either<ChatFailure, String>> createRoom({
    required Post post,
  });
  Future<Either<ChatFailure, ChatResponse>> getChatMessages(
      ChatRequest chatRequest);
  Future<Either<ChatFailure, SendChat>> sendMessage({
    required SendChat content,
    required String roomId,
    required String opponentId,
  });
  Future<Either<ChatFailure, bool>> readMessage({
    required String roomId,
  });
}
