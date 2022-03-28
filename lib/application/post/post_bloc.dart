import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/chat/chat_failure.dart';
import 'package:crave_app/domain/chat/i_chat_repository.dart';
import 'package:crave_app/domain/post/i_post_repository.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/post/post_failure.dart';
import 'package:crave_app/domain/post/post_request.dart';
import 'package:crave_app/domain/post/post_snapshot.dart';
import 'package:crave_app/domain/post/post_stream.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

@lazySingleton
class PostBloc extends Bloc<PostEvent, PostState> {
  final IPostRepository _postRepository;
  final IChatRepository _chatRepository;

  PostBloc(this._postRepository, this._chatRepository)
      : super(const PostState.initial()) {
    on<PostEvent>((event, emit) async {
      await event.map(
        getAllPostStream: (_event) async {
          final failureOrSuccess = await _postRepository.getAllPost(
            radius: _event.radius,
            profile: _event.profile,
          );
          failureOrSuccess.match((l) {
            emit(PostState.failure(l));
          }, (postStream) {
            emit(PostState.getAllPostStreamSuccess(postStream: postStream));
          });
        },
        getWhoLikesMePosts: (_event) async {
          final request = PostRequest(
            page: _event.page,
            pageSize: 10,
          );
          final failureOrSuccess =
              await _postRepository.getWhoLikesMePost(postRequest: request);
          failureOrSuccess.match((l) {
            emit(PostState.failure(l));
          }, (postSnapshot) {
            emit(PostState.getWhoLikesMeSuccess(postSnapshot: postSnapshot));
          });
        },
        likePost: (_event) async {
          final failureOrSuccess = await _postRepository.likePost(
            postId: _event.postId,
            isLiked: _event.isLiked,
          );
          failureOrSuccess.match((l) {
            emit(PostState.failure(l));
          }, (isLiked) {
            emit(PostState.likePostSuccess(_event.postId, isLiked));
          });
        },
        dismissPost: (_event) async {
          final failureOrSuccess = await _postRepository.dismissPost(
            postId: _event.postId,
          );
          failureOrSuccess.match((l) {
            emit(PostState.failure(l));
          }, (isLiked) {
            emit(PostState.dismissPostSuccess(_event.postId));
          });
        },
        createRoom: (_event) async {
          emit(const PostState.isCreatingRoom());
          final failureOrSuccess = await _chatRepository.createRoom(
            post: _event.post,
            isInstantChat: false,
          );
          failureOrSuccess.match((l) {
            emit(PostState.chatFailure(l));
          }, (roomId) {
            emit(PostState.createRoomSuccess(roomId));
          });
        },
        createInstantChat: (_event) async {
          emit(const PostState.isCreatingRoom());
          final failureOrSuccess = await _chatRepository.createRoom(
            post: _event.post,
            isInstantChat: true,
          );
          failureOrSuccess.match((l) {
            emit(PostState.chatFailure(l));
          }, (roomId) {
            emit(PostState.createRoomSuccess(roomId));
          });
        },
      );
    });
  }
}
