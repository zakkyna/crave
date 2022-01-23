import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_failure.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.noInternet() = _NoInternet;
  const factory ProfileFailure.unexpected() = _Unexpected;
  const factory ProfileFailure.notFound() = _NotFound;
  const factory ProfileFailure.unauthenticated() = _Unauthenticated;
  const factory ProfileFailure.serverError(String message) = _ServerError;
  const factory ProfileFailure.cancelledByUser() = _CancelledByUser;
}
