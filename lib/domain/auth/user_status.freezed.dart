// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStatusTearOff {
  const _$UserStatusTearOff();

  _UserStatus call({required bool isOnline, required DateTime lastSeen}) {
    return _UserStatus(
      isOnline: isOnline,
      lastSeen: lastSeen,
    );
  }
}

/// @nodoc
const $UserStatus = _$UserStatusTearOff();

/// @nodoc
mixin _$UserStatus {
  bool get isOnline => throw _privateConstructorUsedError;
  DateTime get lastSeen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStatusCopyWith<UserStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatusCopyWith<$Res> {
  factory $UserStatusCopyWith(
          UserStatus value, $Res Function(UserStatus) then) =
      _$UserStatusCopyWithImpl<$Res>;
  $Res call({bool isOnline, DateTime lastSeen});
}

/// @nodoc
class _$UserStatusCopyWithImpl<$Res> implements $UserStatusCopyWith<$Res> {
  _$UserStatusCopyWithImpl(this._value, this._then);

  final UserStatus _value;
  // ignore: unused_field
  final $Res Function(UserStatus) _then;

  @override
  $Res call({
    Object? isOnline = freezed,
    Object? lastSeen = freezed,
  }) {
    return _then(_value.copyWith(
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserStatusCopyWith<$Res> implements $UserStatusCopyWith<$Res> {
  factory _$UserStatusCopyWith(
          _UserStatus value, $Res Function(_UserStatus) then) =
      __$UserStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool isOnline, DateTime lastSeen});
}

/// @nodoc
class __$UserStatusCopyWithImpl<$Res> extends _$UserStatusCopyWithImpl<$Res>
    implements _$UserStatusCopyWith<$Res> {
  __$UserStatusCopyWithImpl(
      _UserStatus _value, $Res Function(_UserStatus) _then)
      : super(_value, (v) => _then(v as _UserStatus));

  @override
  _UserStatus get _value => super._value as _UserStatus;

  @override
  $Res call({
    Object? isOnline = freezed,
    Object? lastSeen = freezed,
  }) {
    return _then(_UserStatus(
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_UserStatus implements _UserStatus {
  const _$_UserStatus({required this.isOnline, required this.lastSeen});

  @override
  final bool isOnline;
  @override
  final DateTime lastSeen;

  @override
  String toString() {
    return 'UserStatus(isOnline: $isOnline, lastSeen: $lastSeen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserStatus &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOnline, lastSeen);

  @JsonKey(ignore: true)
  @override
  _$UserStatusCopyWith<_UserStatus> get copyWith =>
      __$UserStatusCopyWithImpl<_UserStatus>(this, _$identity);
}

abstract class _UserStatus implements UserStatus {
  const factory _UserStatus(
      {required bool isOnline, required DateTime lastSeen}) = _$_UserStatus;

  @override
  bool get isOnline;
  @override
  DateTime get lastSeen;
  @override
  @JsonKey(ignore: true)
  _$UserStatusCopyWith<_UserStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
