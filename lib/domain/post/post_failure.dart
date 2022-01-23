import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_failure.freezed.dart';

@freezed
class PostFailure with _$PostFailure {
  const factory PostFailure.unexpected() = _Unexpected;
  const factory PostFailure.noInternet() = _NoInternet;
  const factory PostFailure.unauthenticated() = _Unauthenticated;
  const factory PostFailure.postIdNotFound() = _PostIdNotFound;
  const factory PostFailure.serverError(String message) = _ServerError;
}
