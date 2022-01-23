// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rooms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomsEventTearOff {
  const _$RoomsEventTearOff();

  _GetStream getStream() {
    return const _GetStream();
  }
}

/// @nodoc
const $RoomsEvent = _$RoomsEventTearOff();

/// @nodoc
mixin _$RoomsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStream value) getStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetStream value)? getStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStream value)? getStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsEventCopyWith<$Res> {
  factory $RoomsEventCopyWith(
          RoomsEvent value, $Res Function(RoomsEvent) then) =
      _$RoomsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomsEventCopyWithImpl<$Res> implements $RoomsEventCopyWith<$Res> {
  _$RoomsEventCopyWithImpl(this._value, this._then);

  final RoomsEvent _value;
  // ignore: unused_field
  final $Res Function(RoomsEvent) _then;
}

/// @nodoc
abstract class _$GetStreamCopyWith<$Res> {
  factory _$GetStreamCopyWith(
          _GetStream value, $Res Function(_GetStream) then) =
      __$GetStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetStreamCopyWithImpl<$Res> extends _$RoomsEventCopyWithImpl<$Res>
    implements _$GetStreamCopyWith<$Res> {
  __$GetStreamCopyWithImpl(_GetStream _value, $Res Function(_GetStream) _then)
      : super(_value, (v) => _then(v as _GetStream));

  @override
  _GetStream get _value => super._value as _GetStream;
}

/// @nodoc

class _$_GetStream implements _GetStream {
  const _$_GetStream();

  @override
  String toString() {
    return 'RoomsEvent.getStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStream,
  }) {
    return getStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getStream,
  }) {
    return getStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStream,
    required TResult orElse(),
  }) {
    if (getStream != null) {
      return getStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStream value) getStream,
  }) {
    return getStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetStream value)? getStream,
  }) {
    return getStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStream value)? getStream,
    required TResult orElse(),
  }) {
    if (getStream != null) {
      return getStream(this);
    }
    return orElse();
  }
}

abstract class _GetStream implements RoomsEvent {
  const factory _GetStream() = _$_GetStream;
}

/// @nodoc
class _$RoomsStateTearOff {
  const _$RoomsStateTearOff();

  _RoomsState call(
      {required bool isLoading,
      required Option<Either<ChatFailure, Stream<List<RoomModel>>>>
          streamFailureOrSuccessOptiion}) {
    return _RoomsState(
      isLoading: isLoading,
      streamFailureOrSuccessOptiion: streamFailureOrSuccessOptiion,
    );
  }
}

/// @nodoc
const $RoomsState = _$RoomsStateTearOff();

/// @nodoc
mixin _$RoomsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ChatFailure, Stream<List<RoomModel>>>>
      get streamFailureOrSuccessOptiion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomsStateCopyWith<RoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsStateCopyWith<$Res> {
  factory $RoomsStateCopyWith(
          RoomsState value, $Res Function(RoomsState) then) =
      _$RoomsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<ChatFailure, Stream<List<RoomModel>>>>
          streamFailureOrSuccessOptiion});
}

/// @nodoc
class _$RoomsStateCopyWithImpl<$Res> implements $RoomsStateCopyWith<$Res> {
  _$RoomsStateCopyWithImpl(this._value, this._then);

  final RoomsState _value;
  // ignore: unused_field
  final $Res Function(RoomsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? streamFailureOrSuccessOptiion = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      streamFailureOrSuccessOptiion: streamFailureOrSuccessOptiion == freezed
          ? _value.streamFailureOrSuccessOptiion
          : streamFailureOrSuccessOptiion // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChatFailure, Stream<List<RoomModel>>>>,
    ));
  }
}

/// @nodoc
abstract class _$RoomsStateCopyWith<$Res> implements $RoomsStateCopyWith<$Res> {
  factory _$RoomsStateCopyWith(
          _RoomsState value, $Res Function(_RoomsState) then) =
      __$RoomsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<ChatFailure, Stream<List<RoomModel>>>>
          streamFailureOrSuccessOptiion});
}

/// @nodoc
class __$RoomsStateCopyWithImpl<$Res> extends _$RoomsStateCopyWithImpl<$Res>
    implements _$RoomsStateCopyWith<$Res> {
  __$RoomsStateCopyWithImpl(
      _RoomsState _value, $Res Function(_RoomsState) _then)
      : super(_value, (v) => _then(v as _RoomsState));

  @override
  _RoomsState get _value => super._value as _RoomsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? streamFailureOrSuccessOptiion = freezed,
  }) {
    return _then(_RoomsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      streamFailureOrSuccessOptiion: streamFailureOrSuccessOptiion == freezed
          ? _value.streamFailureOrSuccessOptiion
          : streamFailureOrSuccessOptiion // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChatFailure, Stream<List<RoomModel>>>>,
    ));
  }
}

/// @nodoc

class _$_RoomsState implements _RoomsState {
  const _$_RoomsState(
      {required this.isLoading, required this.streamFailureOrSuccessOptiion});

  @override
  final bool isLoading;
  @override
  final Option<Either<ChatFailure, Stream<List<RoomModel>>>>
      streamFailureOrSuccessOptiion;

  @override
  String toString() {
    return 'RoomsState(isLoading: $isLoading, streamFailureOrSuccessOptiion: $streamFailureOrSuccessOptiion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.streamFailureOrSuccessOptiion,
                    streamFailureOrSuccessOptiion) ||
                other.streamFailureOrSuccessOptiion ==
                    streamFailureOrSuccessOptiion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, streamFailureOrSuccessOptiion);

  @JsonKey(ignore: true)
  @override
  _$RoomsStateCopyWith<_RoomsState> get copyWith =>
      __$RoomsStateCopyWithImpl<_RoomsState>(this, _$identity);
}

abstract class _RoomsState implements RoomsState {
  const factory _RoomsState(
      {required bool isLoading,
      required Option<Either<ChatFailure, Stream<List<RoomModel>>>>
          streamFailureOrSuccessOptiion}) = _$_RoomsState;

  @override
  bool get isLoading;
  @override
  Option<Either<ChatFailure, Stream<List<RoomModel>>>>
      get streamFailureOrSuccessOptiion;
  @override
  @JsonKey(ignore: true)
  _$RoomsStateCopyWith<_RoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}
