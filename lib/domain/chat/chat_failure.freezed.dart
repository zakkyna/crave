// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatFailureTearOff {
  const _$ChatFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _NoInternet noInternet() {
    return const _NoInternet();
  }

  _ServerError serverError(String message) {
    return _ServerError(
      message,
    );
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _Unauthorized unauthorized() {
    return const _Unauthorized();
  }

  _UserNotFound userNotFound() {
    return const _UserNotFound();
  }

  _Expired expired() {
    return const _Expired();
  }

  _MessageNotSent messageNotSent(
      {required ChatFailure failure, required SendChat content}) {
    return _MessageNotSent(
      failure: failure,
      content: content,
    );
  }
}

/// @nodoc
const $ChatFailure = _$ChatFailureTearOff();

/// @nodoc
mixin _$ChatFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatFailureCopyWith<$Res> {
  factory $ChatFailureCopyWith(
          ChatFailure value, $Res Function(ChatFailure) then) =
      _$ChatFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatFailureCopyWithImpl<$Res> implements $ChatFailureCopyWith<$Res> {
  _$ChatFailureCopyWithImpl(this._value, this._then);

  final ChatFailure _value;
  // ignore: unused_field
  final $Res Function(ChatFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'ChatFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ChatFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
    implements _$NoInternetCopyWith<$Res> {
  __$NoInternetCopyWithImpl(
      _NoInternet _value, $Res Function(_NoInternet) _then)
      : super(_value, (v) => _then(v as _NoInternet));

  @override
  _NoInternet get _value => super._value as _NoInternet;
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString() {
    return 'ChatFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements ChatFailure {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ServerError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ChatFailure {
  const factory _ServerError(String message) = _$_ServerError;

  String get message;
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$ChatFailureCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'ChatFailure.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements ChatFailure {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;
}

/// @nodoc

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString() {
    return 'ChatFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements ChatFailure {
  const factory _Unauthorized() = _$_Unauthorized;
}

/// @nodoc
abstract class _$UserNotFoundCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotFoundCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
    implements _$UserNotFoundCopyWith<$Res> {
  __$UserNotFoundCopyWithImpl(
      _UserNotFound _value, $Res Function(_UserNotFound) _then)
      : super(_value, (v) => _then(v as _UserNotFound));

  @override
  _UserNotFound get _value => super._value as _UserNotFound;
}

/// @nodoc

class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'ChatFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements ChatFailure {
  const factory _UserNotFound() = _$_UserNotFound;
}

/// @nodoc
abstract class _$ExpiredCopyWith<$Res> {
  factory _$ExpiredCopyWith(_Expired value, $Res Function(_Expired) then) =
      __$ExpiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExpiredCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
    implements _$ExpiredCopyWith<$Res> {
  __$ExpiredCopyWithImpl(_Expired _value, $Res Function(_Expired) _then)
      : super(_value, (v) => _then(v as _Expired));

  @override
  _Expired get _value => super._value as _Expired;
}

/// @nodoc

class _$_Expired implements _Expired {
  const _$_Expired();

  @override
  String toString() {
    return 'ChatFailure.expired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Expired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return expired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return expired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return expired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return expired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired(this);
    }
    return orElse();
  }
}

abstract class _Expired implements ChatFailure {
  const factory _Expired() = _$_Expired;
}

/// @nodoc
abstract class _$MessageNotSentCopyWith<$Res> {
  factory _$MessageNotSentCopyWith(
          _MessageNotSent value, $Res Function(_MessageNotSent) then) =
      __$MessageNotSentCopyWithImpl<$Res>;
  $Res call({ChatFailure failure, SendChat content});

  $ChatFailureCopyWith<$Res> get failure;
  $SendChatCopyWith<$Res> get content;
}

/// @nodoc
class __$MessageNotSentCopyWithImpl<$Res>
    extends _$ChatFailureCopyWithImpl<$Res>
    implements _$MessageNotSentCopyWith<$Res> {
  __$MessageNotSentCopyWithImpl(
      _MessageNotSent _value, $Res Function(_MessageNotSent) _then)
      : super(_value, (v) => _then(v as _MessageNotSent));

  @override
  _MessageNotSent get _value => super._value as _MessageNotSent;

  @override
  $Res call({
    Object? failure = freezed,
    Object? content = freezed,
  }) {
    return _then(_MessageNotSent(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ChatFailure,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SendChat,
    ));
  }

  @override
  $ChatFailureCopyWith<$Res> get failure {
    return $ChatFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }

  @override
  $SendChatCopyWith<$Res> get content {
    return $SendChatCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

class _$_MessageNotSent implements _MessageNotSent {
  const _$_MessageNotSent({required this.failure, required this.content});

  @override
  final ChatFailure failure;
  @override
  final SendChat content;

  @override
  String toString() {
    return 'ChatFailure.messageNotSent(failure: $failure, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageNotSent &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, content);

  @JsonKey(ignore: true)
  @override
  _$MessageNotSentCopyWith<_MessageNotSent> get copyWith =>
      __$MessageNotSentCopyWithImpl<_MessageNotSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function(String message) serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unauthorized,
    required TResult Function() userNotFound,
    required TResult Function() expired,
    required TResult Function(ChatFailure failure, SendChat content)
        messageNotSent,
  }) {
    return messageNotSent(failure, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
  }) {
    return messageNotSent?.call(failure, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function(String message)? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unauthorized,
    TResult Function()? userNotFound,
    TResult Function()? expired,
    TResult Function(ChatFailure failure, SendChat content)? messageNotSent,
    required TResult orElse(),
  }) {
    if (messageNotSent != null) {
      return messageNotSent(failure, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_Expired value) expired,
    required TResult Function(_MessageNotSent value) messageNotSent,
  }) {
    return messageNotSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
  }) {
    return messageNotSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_Expired value)? expired,
    TResult Function(_MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (messageNotSent != null) {
      return messageNotSent(this);
    }
    return orElse();
  }
}

abstract class _MessageNotSent implements ChatFailure {
  const factory _MessageNotSent(
      {required ChatFailure failure,
      required SendChat content}) = _$_MessageNotSent;

  ChatFailure get failure;
  SendChat get content;
  @JsonKey(ignore: true)
  _$MessageNotSentCopyWith<_MessageNotSent> get copyWith =>
      throw _privateConstructorUsedError;
}
