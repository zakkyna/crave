// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkErrorTearOff {
  const _$NetworkErrorTearOff();

  _NoInternet noInternet() {
    return const _NoInternet();
  }

  _ServerError serverError({Response<dynamic>? response}) {
    return _ServerError(
      response: response,
    );
  }

  _Timeout timeout() {
    return const _Timeout();
  }

  _Other other({required dynamic error}) {
    return _Other(
      error: error,
    );
  }
}

/// @nodoc
const $NetworkError = _$NetworkErrorTearOff();

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(dynamic error) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res> implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  final NetworkError _value;
  // ignore: unused_field
  final $Res Function(NetworkError) _then;
}

/// @nodoc
abstract class _$NoInternetCopyWith<$Res> {
  factory _$NoInternetCopyWith(
          _NoInternet value, $Res Function(_NoInternet) then) =
      __$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
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
    return 'NetworkError.noInternet()';
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
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(dynamic error) other,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
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
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements NetworkError {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({Response<dynamic>? response});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_ServerError(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({this.response});

  @override
  final Response<dynamic>? response;

  @override
  String toString() {
    return 'NetworkError.serverError(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(dynamic error) other,
  }) {
    return serverError(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
  }) {
    return serverError?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements NetworkError {
  const factory _ServerError({Response<dynamic>? response}) = _$_ServerError;

  Response<dynamic>? get response;
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimeoutCopyWith<$Res> {
  factory _$TimeoutCopyWith(_Timeout value, $Res Function(_Timeout) then) =
      __$TimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimeoutCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$TimeoutCopyWith<$Res> {
  __$TimeoutCopyWithImpl(_Timeout _value, $Res Function(_Timeout) _then)
      : super(_value, (v) => _then(v as _Timeout));

  @override
  _Timeout get _value => super._value as _Timeout;
}

/// @nodoc

class _$_Timeout implements _Timeout {
  const _$_Timeout();

  @override
  String toString() {
    return 'NetworkError.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Timeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(dynamic error) other,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements NetworkError {
  const factory _Timeout() = _$_Timeout;
}

/// @nodoc
abstract class _$OtherCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) then) =
      __$OtherCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$OtherCopyWithImpl<$Res> extends _$NetworkErrorCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(_Other _value, $Res Function(_Other) _then)
      : super(_value, (v) => _then(v as _Other));

  @override
  _Other get _value => super._value as _Other;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Other(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Other implements _Other {
  const _$_Other({required this.error});

  @override
  final dynamic error;

  @override
  String toString() {
    return 'NetworkError.other(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Other &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$OtherCopyWith<_Other> get copyWith =>
      __$OtherCopyWithImpl<_Other>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(dynamic error) other,
  }) {
    return other(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
  }) {
    return other?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(dynamic error)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements NetworkError {
  const factory _Other({required dynamic error}) = _$_Other;

  dynamic get error;
  @JsonKey(ignore: true)
  _$OtherCopyWith<_Other> get copyWith => throw _privateConstructorUsedError;
}
