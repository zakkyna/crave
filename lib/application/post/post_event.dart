part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.getAllPostStream({
    required double radius,
    required Profile profile,
  }) = _GetAllPosts;
  const factory PostEvent.getWhoLikesMePosts(int page) = _GetWhoLikesMePosts;
  const factory PostEvent.likePost(String postId, bool isLiked) = _LikePost;
  const factory PostEvent.dismissPost(String postId) = _DismissPost;
  const factory PostEvent.createRoom(Post post) = _CreateRoom;
  const factory PostEvent.createInstantChat(Post post) = _CreateInstantChat;
}
