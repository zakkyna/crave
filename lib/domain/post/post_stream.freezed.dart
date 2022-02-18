// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostStreamTearOff {
  const _$PostStreamTearOff();

  _PostStream call(
      {required Stream<List<DocumentSnapshot<Object?>>> stream,
      required Coordinate coordinate}) {
    return _PostStream(
      stream: stream,
      coordinate: coordinate,
    );
  }
}

/// @nodoc
const $PostStream = _$PostStreamTearOff();

/// @nodoc
mixin _$PostStream {
  Stream<List<DocumentSnapshot<Object?>>> get stream =>
      throw _privateConstructorUsedError;
  Coordinate get coordinate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStreamCopyWith<PostStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStreamCopyWith<$Res> {
  factory $PostStreamCopyWith(
          PostStream value, $Res Function(PostStream) then) =
      _$PostStreamCopyWithImpl<$Res>;
  $Res call(
      {Stream<List<DocumentSnapshot<Object?>>> stream, Coordinate coordinate});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$PostStreamCopyWithImpl<$Res> implements $PostStreamCopyWith<$Res> {
  _$PostStreamCopyWithImpl(this._value, this._then);

  final PostStream _value;
  // ignore: unused_field
  final $Res Function(PostStream) _then;

  @override
  $Res call({
    Object? stream = freezed,
    Object? coordinate = freezed,
  }) {
    return _then(_value.copyWith(
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<List<DocumentSnapshot<Object?>>>,
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }

  @override
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value));
    });
  }
}

/// @nodoc
abstract class _$PostStreamCopyWith<$Res> implements $PostStreamCopyWith<$Res> {
  factory _$PostStreamCopyWith(
          _PostStream value, $Res Function(_PostStream) then) =
      __$PostStreamCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<List<DocumentSnapshot<Object?>>> stream, Coordinate coordinate});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$PostStreamCopyWithImpl<$Res> extends _$PostStreamCopyWithImpl<$Res>
    implements _$PostStreamCopyWith<$Res> {
  __$PostStreamCopyWithImpl(
      _PostStream _value, $Res Function(_PostStream) _then)
      : super(_value, (v) => _then(v as _PostStream));

  @override
  _PostStream get _value => super._value as _PostStream;

  @override
  $Res call({
    Object? stream = freezed,
    Object? coordinate = freezed,
  }) {
    return _then(_PostStream(
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<List<DocumentSnapshot<Object?>>>,
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }
}

/// @nodoc

class _$_PostStream implements _PostStream {
  const _$_PostStream({required this.stream, required this.coordinate});

  @override
  final Stream<List<DocumentSnapshot<Object?>>> stream;
  @override
  final Coordinate coordinate;

  @override
  String toString() {
    return 'PostStream(stream: $stream, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostStream &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stream, coordinate);

  @JsonKey(ignore: true)
  @override
  _$PostStreamCopyWith<_PostStream> get copyWith =>
      __$PostStreamCopyWithImpl<_PostStream>(this, _$identity);
}

abstract class _PostStream implements PostStream {
  const factory _PostStream(
      {required Stream<List<DocumentSnapshot<Object?>>> stream,
      required Coordinate coordinate}) = _$_PostStream;

  @override
  Stream<List<DocumentSnapshot<Object?>>> get stream;
  @override
  Coordinate get coordinate;
  @override
  @JsonKey(ignore: true)
  _$PostStreamCopyWith<_PostStream> get copyWith =>
      throw _privateConstructorUsedError;
}
