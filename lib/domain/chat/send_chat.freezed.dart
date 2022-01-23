// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendChatTearOff {
  const _$SendChatTearOff();

  _SendChat call({required Message message}) {
    return _SendChat(
      message: message,
    );
  }
}

/// @nodoc
const $SendChat = _$SendChatTearOff();

/// @nodoc
mixin _$SendChat {
  Message get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendChatCopyWith<SendChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendChatCopyWith<$Res> {
  factory $SendChatCopyWith(SendChat value, $Res Function(SendChat) then) =
      _$SendChatCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class _$SendChatCopyWithImpl<$Res> implements $SendChatCopyWith<$Res> {
  _$SendChatCopyWithImpl(this._value, this._then);

  final SendChat _value;
  // ignore: unused_field
  final $Res Function(SendChat) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
abstract class _$SendChatCopyWith<$Res> implements $SendChatCopyWith<$Res> {
  factory _$SendChatCopyWith(_SendChat value, $Res Function(_SendChat) then) =
      __$SendChatCopyWithImpl<$Res>;
  @override
  $Res call({Message message});
}

/// @nodoc
class __$SendChatCopyWithImpl<$Res> extends _$SendChatCopyWithImpl<$Res>
    implements _$SendChatCopyWith<$Res> {
  __$SendChatCopyWithImpl(_SendChat _value, $Res Function(_SendChat) _then)
      : super(_value, (v) => _then(v as _SendChat));

  @override
  _SendChat get _value => super._value as _SendChat;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_SendChat(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_SendChat implements _SendChat {
  const _$_SendChat({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'SendChat(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendChat &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  _$SendChatCopyWith<_SendChat> get copyWith =>
      __$SendChatCopyWithImpl<_SendChat>(this, _$identity);
}

abstract class _SendChat implements SendChat {
  const factory _SendChat({required Message message}) = _$_SendChat;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$SendChatCopyWith<_SendChat> get copyWith =>
      throw _privateConstructorUsedError;
}
