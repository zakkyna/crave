import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_request.freezed.dart';

@freezed
class PostRequest with _$PostRequest {
  const factory PostRequest({
    required int pageSize,
    required int page,
  }) = _PostRequest;
}
