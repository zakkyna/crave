import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/core/interfaces/i_location_service.dart';
import 'package:crave_app/domain/post/i_post_repository.dart';
import 'package:crave_app/domain/post/post.dart';

import 'package:crave_app/domain/post/post_failure.dart';
import 'package:crave_app/domain/post/post_request.dart';
import 'package:crave_app/domain/post/post_snapshot.dart';
import 'package:crave_app/domain/post/post_stream.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final Geoflutterfire _geoflutterfire;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final ILocationService _locationService;
  final Logger logger;
  PostRepository(
    this._firestore,
    this._firebaseAuth,
    this._geoflutterfire,
    this._locationService,
    this.logger,
  );
  @override
  Future<Either<PostFailure, Unit>> dismissPost(
      {required String postId}) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const PostFailure.unauthenticated());
      }
      final collectionRef = _firestore.collection('posts').doc(postId);
      await collectionRef.update({
        'dismissed_by.${currentUser.uid}': true,
      });
      return right(unit);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(PostFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, bool>> likePost({
    required String postId,
    required bool isLiked,
  }) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const PostFailure.unauthenticated());
      }
      final collectionRef = _firestore.collection('posts').doc(postId);
      if (!isLiked) {
        await collectionRef.update({
          'liked_by': FieldValue.arrayUnion([currentUser.uid]),
        });
      } else {
        await collectionRef.update({
          'liked_by': FieldValue.arrayRemove([currentUser.uid]),
        });
      }
      return right(isLiked);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(PostFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, PostStream>> getAllPost({
    required double radius,
    required Profile profile,
  }) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const PostFailure.unauthenticated());
      }
      final coordinate = await _locationService.getCoordinate();
      final center = _geoflutterfire.point(
        latitude: coordinate.latitude,
        longitude: coordinate.longitude,
      );
      center;
      logger.d('latitude: ${coordinate.latitude}');
      logger.d('longitude: ${coordinate.longitude}');
      final collectionRef = _firestore.collection('posts');
      final defaultSeeking = profile.genderId == 1
          ? [2]
          : profile.genderId == 2
              ? [1]
              : [1, 2, 3];
      final query = collectionRef
          .where(
            'is_published',
            isEqualTo: true,
          )
          .where(
            'gender_id',
            whereIn: profile.settingData?.seeking ?? defaultSeeking,
          )
          .snapshots()
          .asyncMap((element) {
        final list = element.docs.where((doc) {
          final post = Post.fromJson(doc.data());
          final isDismissed =
              post.dismissedBy?.containsKey(currentUser.uid) ?? false;
          return post.uid != currentUser.uid &&
              !isDismissed &&
              post.isPublished;
        }).toList();
        list.sort((a, b) {
          final aPost = Post.fromJson(a.data());
          final bPost = Post.fromJson(b.data());
          final d1 = aPost.distanceInKM(coordinate.toGeopoint());
          final d2 = bPost.distanceInKM(coordinate.toGeopoint());
          if (d1 > d2) {
            return 1;
          } else if (d1 < d2) {
            return -1;
          } else {
            return 0;
          }
        });
        logger.d('list: $list');
        return list;
      });
      // final query = _geoflutterfire
      //     .collection(collectionRef: collectionRef)
      //     .within(center: center, radius: double.maxFinite, field: 'location')
      //     .asyncMap((element) => element.where((doc) {
      //           final post = Post.fromJson(doc.data() as Map<String, dynamic>);
      //           final isDismissed =
      //               post.dismissedBy?.containsKey(currentUser.uid) ?? false;
      //           return post.uid != currentUser.uid &&
      //               !isDismissed &&
      //               post.photos.isNotEmpty &&
      //               post.isPublished;
      //         }).toList());
      final postStream = PostStream(stream: query, coordinate: coordinate);
      return right(postStream);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(PostFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, PostSnapshot>> getWhoLikesMePost({
    required PostRequest postRequest,
  }) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const PostFailure.unauthenticated());
      }
      final snapshot =
          await _firestore.collection('posts').doc(currentUser.uid).get();
      final data = snapshot.data();
      if (data == null) {
        return left(const PostFailure.postIdNotFound());
      }
      final post = Post.fromJson(data);
      logger.d('data:$data');

      final whoLikesMe = post.likedBy;

      List<String> getChunks(List<String>? list, int page) {
        var chunks = [];
        int chunkSize = postRequest.pageSize;
        if (list == null) {
          return [];
        }
        for (var i = 0; i < list.length; i += chunkSize) {
          chunks.add(list.sublist(
              i, i + chunkSize > list.length ? list.length : i + chunkSize));
        }
        logger.d('chunks: $chunks');
        return chunks.length < page ? [] : chunks[(page - 1)];
      }

      final whereIn = getChunks(whoLikesMe, postRequest.page);
      List<Post> posts;

      if (whereIn.isEmpty) {
        posts = [];
      } else {
        final postQuery = _firestore
            .collection('posts')
            .where('uid', whereIn: whereIn)
            .orderBy('location');
        final getData = await postQuery.get();
        final data =
            getData.docs.map((doc) => Post.fromJson(doc.data())).toList();
        posts = data
            .where((post) =>
                ((post.dismissedBy?[currentUser.uid] ?? false) != true) &&
                post.photos.isNotEmpty)
            .toList();
      }

      final postSnapshot = PostSnapshot(
        posts: posts,
        hasReachedMax: posts.length < postRequest.pageSize,
        nextPage: postRequest.page + 1,
      );
      return right(postSnapshot);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(PostFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const PostFailure.unexpected());
    }
  }
}
