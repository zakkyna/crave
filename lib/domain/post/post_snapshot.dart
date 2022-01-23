import 'package:crave_app/domain/post/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_snapshot.freezed.dart';

@freezed
class PostSnapshot with _$PostSnapshot {
  const factory PostSnapshot({
    required List<Post> posts,
    required bool hasReachedMax,
    required int nextPage,
  }) = _PostSnapshot;
}
