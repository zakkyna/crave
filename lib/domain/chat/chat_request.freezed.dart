// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatRequestTearOff {
  const _$ChatRequestTearOff();

  _ChatRequest call({required String roomId}) {
    return _ChatRequest(
      roomId: roomId,
    );
  }
}

/// @nodoc
const $ChatRequest = _$ChatRequestTearOff();

/// @nodoc
mixin _$ChatRequest {
  String get roomId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRequestCopyWith<ChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRequestCopyWith<$Res> {
  factory $ChatRequestCopyWith(
          ChatRequest value, $Res Function(ChatRequest) then) =
      _$ChatRequestCopyWithImpl<$Res>;
  $Res call({String roomId});
}

/// @nodoc
class _$ChatRequestCopyWithImpl<$Res> implements $ChatRequestCopyWith<$Res> {
  _$ChatRequestCopyWithImpl(this._value, this._then);

  final ChatRequest _value;
  // ignore: unused_field
  final $Res Function(ChatRequest) _then;

  @override
  $Res call({
    Object? roomId = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatRequestCopyWith<$Res>
    implements $ChatRequestCopyWith<$Res> {
  factory _$ChatRequestCopyWith(
          _ChatRequest value, $Res Function(_ChatRequest) then) =
      __$ChatRequestCopyWithImpl<$Res>;
  @override
  $Res call({String roomId});
}

/// @nodoc
class __$ChatRequestCopyWithImpl<$Res> extends _$ChatRequestCopyWithImpl<$Res>
    implements _$ChatRequestCopyWith<$Res> {
  __$ChatRequestCopyWithImpl(
      _ChatRequest _value, $Res Function(_ChatRequest) _then)
      : super(_value, (v) => _then(v as _ChatRequest));

  @override
  _ChatRequest get _value => super._value as _ChatRequest;

  @override
  $Res call({
    Object? roomId = freezed,
  }) {
    return _then(_ChatRequest(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatRequest implements _ChatRequest {
  const _$_ChatRequest({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatRequest(roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRequest &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  _$ChatRequestCopyWith<_ChatRequest> get copyWith =>
      __$ChatRequestCopyWithImpl<_ChatRequest>(this, _$identity);
}

abstract class _ChatRequest implements ChatRequest {
  const factory _ChatRequest({required String roomId}) = _$_ChatRequest;

  @override
  String get roomId;
  @override
  @JsonKey(ignore: true)
  _$ChatRequestCopyWith<_ChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
