// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ConnectionChanged connectionChanged(ConnectivityResult connection) {
    return _ConnectionChanged(
      connection,
    );
  }

  _StatusChanged statusChanged(UserStatus userStatus) {
    return _StatusChanged(
      userStatus,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ConnectivityResult connection) connectionChanged,
    required TResult Function(UserStatus userStatus) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConnectionChanged value) connectionChanged,
    required TResult Function(_StatusChanged value) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ConnectivityResult connection) connectionChanged,
    required TResult Function(UserStatus userStatus) statusChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConnectionChanged value) connectionChanged,
    required TResult Function(_StatusChanged value) statusChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ConnectionChangedCopyWith<$Res> {
  factory _$ConnectionChangedCopyWith(
          _ConnectionChanged value, $Res Function(_ConnectionChanged) then) =
      __$ConnectionChangedCopyWithImpl<$Res>;
  $Res call({ConnectivityResult connection});
}

/// @nodoc
class __$ConnectionChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$ConnectionChangedCopyWith<$Res> {
  __$ConnectionChangedCopyWithImpl(
      _ConnectionChanged _value, $Res Function(_ConnectionChanged) _then)
      : super(_value, (v) => _then(v as _ConnectionChanged));

  @override
  _ConnectionChanged get _value => super._value as _ConnectionChanged;

  @override
  $Res call({
    Object? connection = freezed,
  }) {
    return _then(_ConnectionChanged(
      connection == freezed
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_ConnectionChanged implements _ConnectionChanged {
  const _$_ConnectionChanged(this.connection);

  @override
  final ConnectivityResult connection;

  @override
  String toString() {
    return 'AppEvent.connectionChanged(connection: $connection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConnectionChanged &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  @JsonKey(ignore: true)
  @override
  _$ConnectionChangedCopyWith<_ConnectionChanged> get copyWith =>
      __$ConnectionChangedCopyWithImpl<_ConnectionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ConnectivityResult connection) connectionChanged,
    required TResult Function(UserStatus userStatus) statusChanged,
  }) {
    return connectionChanged(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
  }) {
    return connectionChanged?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConnectionChanged value) connectionChanged,
    required TResult Function(_StatusChanged value) statusChanged,
  }) {
    return connectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
  }) {
    return connectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectionChanged implements AppEvent {
  const factory _ConnectionChanged(ConnectivityResult connection) =
      _$_ConnectionChanged;

  ConnectivityResult get connection;
  @JsonKey(ignore: true)
  _$ConnectionChangedCopyWith<_ConnectionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StatusChangedCopyWith<$Res> {
  factory _$StatusChangedCopyWith(
          _StatusChanged value, $Res Function(_StatusChanged) then) =
      __$StatusChangedCopyWithImpl<$Res>;
  $Res call({UserStatus userStatus});

  $UserStatusCopyWith<$Res> get userStatus;
}

/// @nodoc
class __$StatusChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$StatusChangedCopyWith<$Res> {
  __$StatusChangedCopyWithImpl(
      _StatusChanged _value, $Res Function(_StatusChanged) _then)
      : super(_value, (v) => _then(v as _StatusChanged));

  @override
  _StatusChanged get _value => super._value as _StatusChanged;

  @override
  $Res call({
    Object? userStatus = freezed,
  }) {
    return _then(_StatusChanged(
      userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
    ));
  }

  @override
  $UserStatusCopyWith<$Res> get userStatus {
    return $UserStatusCopyWith<$Res>(_value.userStatus, (value) {
      return _then(_value.copyWith(userStatus: value));
    });
  }
}

/// @nodoc

class _$_StatusChanged implements _StatusChanged {
  const _$_StatusChanged(this.userStatus);

  @override
  final UserStatus userStatus;

  @override
  String toString() {
    return 'AppEvent.statusChanged(userStatus: $userStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusChanged &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userStatus);

  @JsonKey(ignore: true)
  @override
  _$StatusChangedCopyWith<_StatusChanged> get copyWith =>
      __$StatusChangedCopyWithImpl<_StatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ConnectivityResult connection) connectionChanged,
    required TResult Function(UserStatus userStatus) statusChanged,
  }) {
    return statusChanged(userStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
  }) {
    return statusChanged?.call(userStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ConnectivityResult connection)? connectionChanged,
    TResult Function(UserStatus userStatus)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(userStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ConnectionChanged value) connectionChanged,
    required TResult Function(_StatusChanged value) statusChanged,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConnectionChanged value)? connectionChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusChanged implements AppEvent {
  const factory _StatusChanged(UserStatus userStatus) = _$_StatusChanged;

  UserStatus get userStatus;
  @JsonKey(ignore: true)
  _$StatusChangedCopyWith<_StatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {required bool isLoading,
      required bool isPreinstalled,
      required ConnectivityResult connectionStatus}) {
    return _AppState(
      isLoading: isLoading,
      isPreinstalled: isPreinstalled,
      connectionStatus: connectionStatus,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPreinstalled => throw _privateConstructorUsedError;
  ConnectivityResult get connectionStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isPreinstalled,
      ConnectivityResult connectionStatus});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isPreinstalled = freezed,
    Object? connectionStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreinstalled: isPreinstalled == freezed
          ? _value.isPreinstalled
          : isPreinstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatus: connectionStatus == freezed
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isPreinstalled,
      ConnectivityResult connectionStatus});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isPreinstalled = freezed,
    Object? connectionStatus = freezed,
  }) {
    return _then(_AppState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreinstalled: isPreinstalled == freezed
          ? _value.isPreinstalled
          : isPreinstalled // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatus: connectionStatus == freezed
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {required this.isLoading,
      required this.isPreinstalled,
      required this.connectionStatus});

  @override
  final bool isLoading;
  @override
  final bool isPreinstalled;
  @override
  final ConnectivityResult connectionStatus;

  @override
  String toString() {
    return 'AppState(isLoading: $isLoading, isPreinstalled: $isPreinstalled, connectionStatus: $connectionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPreinstalled, isPreinstalled) ||
                other.isPreinstalled == isPreinstalled) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isPreinstalled, connectionStatus);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required bool isLoading,
      required bool isPreinstalled,
      required ConnectivityResult connectionStatus}) = _$_AppState;

  @override
  bool get isLoading;
  @override
  bool get isPreinstalled;
  @override
  ConnectivityResult get connectionStatus;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
