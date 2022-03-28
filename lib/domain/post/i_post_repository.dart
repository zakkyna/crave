import 'package:crave_app/domain/post/post_failure.dart';
import 'package:crave_app/domain/post/post_request.dart';
import 'package:crave_app/domain/post/post_snapshot.dart';
import 'package:crave_app/domain/post/post_stream.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:fpdart/fpdart.dart';

abstract class IPostRepository {
  Future<Either<PostFailure, bool>> likePost({
    required String postId,
    required bool isLiked,
  });
  Future<Either<PostFailure, Unit>> dismissPost({
    required String postId,
  });
  Future<Either<PostFailure, PostStream>> getAllPost({
    required double radius,
    required Profile profile,
  });
  Future<Either<PostFailure, PostSnapshot>> getWhoLikesMePost({
    required PostRequest postRequest,
  });
}
