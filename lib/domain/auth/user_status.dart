import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_status.freezed.dart';

@freezed
class UserStatus with _$UserStatus {
  const factory UserStatus({
    required bool isOnline,
    required DateTime lastSeen,
  }) = _UserStatus;
}
