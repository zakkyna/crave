// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostSnapshotTearOff {
  const _$PostSnapshotTearOff();

  _PostSnapshot call(
      {required List<Post> posts,
      required bool hasReachedMax,
      required int nextPage}) {
    return _PostSnapshot(
      posts: posts,
      hasReachedMax: hasReachedMax,
      nextPage: nextPage,
    );
  }
}

/// @nodoc
const $PostSnapshot = _$PostSnapshotTearOff();

/// @nodoc
mixin _$PostSnapshot {
  List<Post> get posts => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostSnapshotCopyWith<PostSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSnapshotCopyWith<$Res> {
  factory $PostSnapshotCopyWith(
          PostSnapshot value, $Res Function(PostSnapshot) then) =
      _$PostSnapshotCopyWithImpl<$Res>;
  $Res call({List<Post> posts, bool hasReachedMax, int nextPage});
}

/// @nodoc
class _$PostSnapshotCopyWithImpl<$Res> implements $PostSnapshotCopyWith<$Res> {
  _$PostSnapshotCopyWithImpl(this._value, this._then);

  final PostSnapshot _value;
  // ignore: unused_field
  final $Res Function(PostSnapshot) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PostSnapshotCopyWith<$Res>
    implements $PostSnapshotCopyWith<$Res> {
  factory _$PostSnapshotCopyWith(
          _PostSnapshot value, $Res Function(_PostSnapshot) then) =
      __$PostSnapshotCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts, bool hasReachedMax, int nextPage});
}

/// @nodoc
class __$PostSnapshotCopyWithImpl<$Res> extends _$PostSnapshotCopyWithImpl<$Res>
    implements _$PostSnapshotCopyWith<$Res> {
  __$PostSnapshotCopyWithImpl(
      _PostSnapshot _value, $Res Function(_PostSnapshot) _then)
      : super(_value, (v) => _then(v as _PostSnapshot));

  @override
  _PostSnapshot get _value => super._value as _PostSnapshot;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_PostSnapshot(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostSnapshot implements _PostSnapshot {
  const _$_PostSnapshot(
      {required this.posts,
      required this.hasReachedMax,
      required this.nextPage});

  @override
  final List<Post> posts;
  @override
  final bool hasReachedMax;
  @override
  final int nextPage;

  @override
  String toString() {
    return 'PostSnapshot(posts: $posts, hasReachedMax: $hasReachedMax, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostSnapshot &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(posts), hasReachedMax, nextPage);

  @JsonKey(ignore: true)
  @override
  _$PostSnapshotCopyWith<_PostSnapshot> get copyWith =>
      __$PostSnapshotCopyWithImpl<_PostSnapshot>(this, _$identity);
}

abstract class _PostSnapshot implements PostSnapshot {
  const factory _PostSnapshot(
      {required List<Post> posts,
      required bool hasReachedMax,
      required int nextPage}) = _$_PostSnapshot;

  @override
  List<Post> get posts;
  @override
  bool get hasReachedMax;
  @override
  int get nextPage;
  @override
  @JsonKey(ignore: true)
  _$PostSnapshotCopyWith<_PostSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
