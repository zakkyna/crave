import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_stream.freezed.dart';

@freezed
class PostStream with _$PostStream {
  const factory PostStream({
    required Stream<List<DocumentSnapshot<Object?>>> stream,
  }) = _PostStream;
}
