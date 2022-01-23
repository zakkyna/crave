// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatResponseTearOff {
  const _$ChatResponseTearOff();

  _ChatResponse call({required Stream<List<Message>> chatsStream}) {
    return _ChatResponse(
      chatsStream: chatsStream,
    );
  }
}

/// @nodoc
const $ChatResponse = _$ChatResponseTearOff();

/// @nodoc
mixin _$ChatResponse {
  Stream<List<Message>> get chatsStream => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
          ChatResponse value, $Res Function(ChatResponse) then) =
      _$ChatResponseCopyWithImpl<$Res>;
  $Res call({Stream<List<Message>> chatsStream});
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res> implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  final ChatResponse _value;
  // ignore: unused_field
  final $Res Function(ChatResponse) _then;

  @override
  $Res call({
    Object? chatsStream = freezed,
  }) {
    return _then(_value.copyWith(
      chatsStream: chatsStream == freezed
          ? _value.chatsStream
          : chatsStream // ignore: cast_nullable_to_non_nullable
              as Stream<List<Message>>,
    ));
  }
}

/// @nodoc
abstract class _$ChatResponseCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$ChatResponseCopyWith(
          _ChatResponse value, $Res Function(_ChatResponse) then) =
      __$ChatResponseCopyWithImpl<$Res>;
  @override
  $Res call({Stream<List<Message>> chatsStream});
}

/// @nodoc
class __$ChatResponseCopyWithImpl<$Res> extends _$ChatResponseCopyWithImpl<$Res>
    implements _$ChatResponseCopyWith<$Res> {
  __$ChatResponseCopyWithImpl(
      _ChatResponse _value, $Res Function(_ChatResponse) _then)
      : super(_value, (v) => _then(v as _ChatResponse));

  @override
  _ChatResponse get _value => super._value as _ChatResponse;

  @override
  $Res call({
    Object? chatsStream = freezed,
  }) {
    return _then(_ChatResponse(
      chatsStream: chatsStream == freezed
          ? _value.chatsStream
          : chatsStream // ignore: cast_nullable_to_non_nullable
              as Stream<List<Message>>,
    ));
  }
}

/// @nodoc

class _$_ChatResponse implements _ChatResponse {
  const _$_ChatResponse({required this.chatsStream});

  @override
  final Stream<List<Message>> chatsStream;

  @override
  String toString() {
    return 'ChatResponse(chatsStream: $chatsStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatResponse &&
            (identical(other.chatsStream, chatsStream) ||
                other.chatsStream == chatsStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatsStream);

  @JsonKey(ignore: true)
  @override
  _$ChatResponseCopyWith<_ChatResponse> get copyWith =>
      __$ChatResponseCopyWithImpl<_ChatResponse>(this, _$identity);
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse({required Stream<List<Message>> chatsStream}) =
      _$_ChatResponse;

  @override
  Stream<List<Message>> get chatsStream;
  @override
  @JsonKey(ignore: true)
  _$ChatResponseCopyWith<_ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
