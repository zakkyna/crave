// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostFailureTearOff {
  const _$PostFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _NoInternet noInternet() {
    return const _NoInternet();
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _PostIdNotFound postIdNotFound() {
    return const _PostIdNotFound();
  }

  _ServerError serverError(String message) {
    return _ServerError(
      message,
    );
  }
}

/// @nodoc
const $PostFailure = _$PostFailureTearOff();

/// @nodoc
mixin _$PostFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function() unauthenticated,
    required TResult Function() postIdNotFound,
    required TResult Function(String message) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PostIdNotFound value) postIdNotFound,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFailureCopyWith<$Res> {
  factory $PostFailureCopyWith(
          PostFailure value, $Res Function(PostFailure) then) =
      _$PostFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFailureCopyWithImpl<$Res> implements $PostFailureCopyWith<$Res> {
  _$PostFailureCopyWithImpl(this._value, this._then);

  final PostFailure _value;
  // ignore: unused_field
  final $Res Function(PostFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$PostFailureCopyWithImpl<$Res>
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
    return 'PostFailure.unexpected()';
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
    required TResult Function() unauthenticated,
    required TResult Function() postIdNotFound,
    required TResult Function(String message) serverError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PostIdNotFound value) postIdNotFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements PostFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$PostFailureCopyWithImpl<$Res>
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
    return 'PostFailure.noInternet()';
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
    required TResult Function() unauthenticated,
    required TResult Function() postIdNotFound,
    required TResult Function(String message) serverError,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PostIdNotFound value) postIdNotFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements PostFailure {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$PostFailureCopyWithImpl<$Res>
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
    return 'PostFailure.unauthenticated()';
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
    required TResult Function() unauthenticated,
    required TResult Function() postIdNotFound,
    required TResult Function(String message) serverError,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PostIdNotFound value) postIdNotFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements PostFailure {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$PostIdNotFoundCopyWith<$Res> {
  factory _$PostIdNotFoundCopyWith(
          _PostIdNotFound value, $Res Function(_PostIdNotFound) then) =
      __$PostIdNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostIdNotFoundCopyWithImpl<$Res>
    extends _$PostFailureCopyWithImpl<$Res>
    implements _$PostIdNotFoundCopyWith<$Res> {
  __$PostIdNotFoundCopyWithImpl(
      _PostIdNotFound _value, $Res Function(_PostIdNotFound) _then)
      : super(_value, (v) => _then(v as _PostIdNotFound));

  @override
  _PostIdNotFound get _value => super._value as _PostIdNotFound;
}

/// @nodoc

class _$_PostIdNotFound implements _PostIdNotFound {
  const _$_PostIdNotFound();

  @override
  String toString() {
    return 'PostFailure.postIdNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostIdNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() noInternet,
    required TResult Function() unauthenticated,
    required TResult Function() postIdNotFound,
    required TResult Function(String message) serverError,
  }) {
    return postIdNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
  }) {
    return postIdNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
    required TResult orElse(),
  }) {
    if (postIdNotFound != null) {
      return postIdNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PostIdNotFound value) postIdNotFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return postIdNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
  }) {
    return postIdNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (postIdNotFound != null) {
      return postIdNotFound(this);
    }
    return orElse();
  }
}

abstract class _PostIdNotFound implements PostFailure {
  const factory _PostIdNotFound() = _$_PostIdNotFound;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$PostFailureCopyWithImpl<$Res>
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
    return 'PostFailure.serverError(message: $message)';
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
    required TResult Function() unauthenticated,
    required TResult Function() postIdNotFound,
    required TResult Function(String message) serverError,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? noInternet,
    TResult Function()? unauthenticated,
    TResult Function()? postIdNotFound,
    TResult Function(String message)? serverError,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PostIdNotFound value) postIdNotFound,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PostIdNotFound value)? postIdNotFound,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements PostFailure {
  const factory _ServerError(String message) = _$_ServerError;

  String get message;
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}
