import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:crave_app/domain/chat/chat_failure.dart';
import 'package:crave_app/domain/chat/chat_request.dart';
import 'package:crave_app/domain/chat/chat_response.dart';
import 'package:crave_app/domain/chat/i_chat_repository.dart';
import 'package:crave_app/domain/chat/send_chat.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ntp/ntp.dart';
import 'package:logger/logger.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final Logger logger;
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseFunctions _functions;

  ChatRepository(
    this._firebaseAuth,
    this._firestore,
    this._functions,
    this.logger,
  );

  @override
  Future<Either<ChatFailure, String>> createRoom({
    required Post post,
  }) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const ChatFailure.unauthenticated());
      }
      final queryProfile = await _firestore
          .collection('users')
          .where('uid', whereIn: [user.uid, post.uid]).get();
      final members = queryProfile.docs.map((doc) {
        logger.d('coba ${doc.data()}');
        return Profile.fromJson(doc.data()).copyWith(location: null);
      }).toList();
      final memberIds = members.map((member) => member.uid).toList();
      memberIds.sort();
      final roomId = memberIds.join('_');
      final now = Timestamp.fromDate(await NTP.now());
      final room = RoomModel(
        id: roomId,
        members: members,
        createdAt: now,
        updatedAt: now,
        memberIds: memberIds,
      );

      final doc = await _firestore.collection('rooms').doc(roomId).get();
      if (!doc.exists) {
        await _firestore.collection('rooms').doc(roomId).set(room.toJson());
      }
      // await _firestore.collection('rooms').doc(doc.id).collection('chats').add();
      return right(doc.id);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(ChatFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, Stream<List<RoomModel>>>> getRoomsStream() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const ChatFailure.unauthenticated());
      }
      final query = _firestore
          .collection('rooms')
          .where('member_ids', arrayContains: user.uid)
          .snapshots()
          .asyncMap((event) =>
              event.docs.map((doc) => RoomModel.fromJson(doc.data())).toList());
      return right(query);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(ChatFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, ChatResponse>> getChatMessages(
      ChatRequest chatRequest) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const ChatFailure.unauthenticated());
      }
      final roomId = chatRequest.roomId;

      logger.d('roomId : $roomId');

      final query = _firestore
          .collection('rooms')
          .doc(roomId)
          .collection('chats')
          .orderBy('createdAt', descending: true)
          .snapshots()
          .asyncMap((event) =>
              event.docs.map((doc) => Message.fromJson(doc.data())).toList());

      final chatResponse = ChatResponse(
        chatsStream: query,
      );
      return right(chatResponse);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(ChatFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, SendChat>> sendMessage({
    required SendChat content,
    required String roomId,
    required String opponentId,
  }) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const ChatFailure.unauthenticated());
      }
      final writeBatch = _firestore.batch();

      final chat = content.message.toJson();
      final isText = content.message.type == MessageType.text;
      final isImage = content.message.type == MessageType.image;
      final isFile = content.message.type == MessageType.file;
      chat['roomId'] = roomId;
      chat['status'] = 'sent';

      writeBatch.set(
        _firestore.collection('rooms').doc(roomId).collection('chats').doc(),
        chat,
      );
      writeBatch.update(_firestore.collection('rooms').doc(roomId), {
        'last_chat': chat,
        'last_chat_at': Timestamp.fromMillisecondsSinceEpoch(
            content.message.createdAt ?? DateTime.now().millisecondsSinceEpoch),
      });
      writeBatch.commit();
      final callJson = {
        'roomId': roomId,
        'text': chat['text'] ?? '',
        'uid': opponentId,
      };
      logger.d(callJson);
      _functions.httpsCallable('sendNotificationMessage').call(
            callJson,
          );
      return right(content);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(
        ChatFailure.messageNotSent(
          failure: ChatFailure.serverError(e.message ?? 'An error occurred'),
          content: content,
        ),
      );
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(
        ChatFailure.messageNotSent(
          failure: const ChatFailure.unexpected(),
          content: content,
        ),
      );
    }
  }

  @override
  Future<Either<ChatFailure, bool>> readMessage(
      {required String roomId}) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const ChatFailure.unauthenticated());
      }
      final func = await _functions.httpsCallable('readMessage').call({
        'roomId': roomId,
        'uid': user.uid,
      });
      logger.d('func.data : ${func.data}');
      return right(true);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(ChatFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ChatFailure.unexpected());
    }
  }

  @override
  Future<Either<ChatFailure, Post>> viewProfile(
      {required String userId}) async {
    try {
      final doc = await _firestore.collection('posts').doc(userId).get();
      final data = doc.data();
      if (data == null) {
        return left(const ChatFailure.userNotFound());
      }
      final post = Post.fromJson(data);
      return right(post);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(ChatFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ChatFailure.unexpected());
    }
  }
}
