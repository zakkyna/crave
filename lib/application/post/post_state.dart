part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;
  const factory PostState.isCreatingRoom() = _IsCreatingRoom;
  const factory PostState.getAllPostStreamSuccess({
    required PostStream postStream,
  }) = _GetAllPostSuccess;

  const factory PostState.getWhoLikesMeSuccess({
    required PostSnapshot postSnapshot,
  }) = _GetWhoLikesMeSuccess;

  const factory PostState.likePostSuccess(String postId, bool isLiked) =
      _LikePostSuccess;

  const factory PostState.dismissPostSuccess(String postId) =
      _DismissPostSuccess;

  const factory PostState.createRoomSuccess(String roomId) = _CreateRoomSuccess;

  const factory PostState.failure(PostFailure failure) = _Failure;
  const factory PostState.chatFailure(ChatFailure failure) = _ChatFailure;
}
