// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostEventTearOff {
  const _$PostEventTearOff();

  _GetAllPosts getAllPostStream({required double radius}) {
    return _GetAllPosts(
      radius: radius,
    );
  }

  _GetWhoLikesMePosts getWhoLikesMePosts(int page) {
    return _GetWhoLikesMePosts(
      page,
    );
  }

  _LikePost likePost(String postId, bool isLiked) {
    return _LikePost(
      postId,
      isLiked,
    );
  }

  _DismissPost dismissPost(String postId) {
    return _DismissPost(
      postId,
    );
  }

  _CreateRoom createRoom(Post post) {
    return _CreateRoom(
      post,
    );
  }
}

/// @nodoc
const $PostEvent = _$PostEventTearOff();

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) getAllPostStream,
    required TResult Function(int page) getWhoLikesMePosts,
    required TResult Function(String postId, bool isLiked) likePost,
    required TResult Function(String postId) dismissPost,
    required TResult Function(Post post) createRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPosts value) getAllPostStream,
    required TResult Function(_GetWhoLikesMePosts value) getWhoLikesMePosts,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_DismissPost value) dismissPost,
    required TResult Function(_CreateRoom value) createRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;
}

/// @nodoc
abstract class _$GetAllPostsCopyWith<$Res> {
  factory _$GetAllPostsCopyWith(
          _GetAllPosts value, $Res Function(_GetAllPosts) then) =
      __$GetAllPostsCopyWithImpl<$Res>;
  $Res call({double radius});
}

/// @nodoc
class __$GetAllPostsCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$GetAllPostsCopyWith<$Res> {
  __$GetAllPostsCopyWithImpl(
      _GetAllPosts _value, $Res Function(_GetAllPosts) _then)
      : super(_value, (v) => _then(v as _GetAllPosts));

  @override
  _GetAllPosts get _value => super._value as _GetAllPosts;

  @override
  $Res call({
    Object? radius = freezed,
  }) {
    return _then(_GetAllPosts(
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GetAllPosts with DiagnosticableTreeMixin implements _GetAllPosts {
  const _$_GetAllPosts({required this.radius});

  @override
  final double radius;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.getAllPostStream(radius: $radius)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.getAllPostStream'))
      ..add(DiagnosticsProperty('radius', radius));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllPosts &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @override
  int get hashCode => Object.hash(runtimeType, radius);

  @JsonKey(ignore: true)
  @override
  _$GetAllPostsCopyWith<_GetAllPosts> get copyWith =>
      __$GetAllPostsCopyWithImpl<_GetAllPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) getAllPostStream,
    required TResult Function(int page) getWhoLikesMePosts,
    required TResult Function(String postId, bool isLiked) likePost,
    required TResult Function(String postId) dismissPost,
    required TResult Function(Post post) createRoom,
  }) {
    return getAllPostStream(radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
  }) {
    return getAllPostStream?.call(radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
    required TResult orElse(),
  }) {
    if (getAllPostStream != null) {
      return getAllPostStream(radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPosts value) getAllPostStream,
    required TResult Function(_GetWhoLikesMePosts value) getWhoLikesMePosts,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_DismissPost value) dismissPost,
    required TResult Function(_CreateRoom value) createRoom,
  }) {
    return getAllPostStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
  }) {
    return getAllPostStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
    required TResult orElse(),
  }) {
    if (getAllPostStream != null) {
      return getAllPostStream(this);
    }
    return orElse();
  }
}

abstract class _GetAllPosts implements PostEvent {
  const factory _GetAllPosts({required double radius}) = _$_GetAllPosts;

  double get radius;
  @JsonKey(ignore: true)
  _$GetAllPostsCopyWith<_GetAllPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetWhoLikesMePostsCopyWith<$Res> {
  factory _$GetWhoLikesMePostsCopyWith(
          _GetWhoLikesMePosts value, $Res Function(_GetWhoLikesMePosts) then) =
      __$GetWhoLikesMePostsCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class __$GetWhoLikesMePostsCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements _$GetWhoLikesMePostsCopyWith<$Res> {
  __$GetWhoLikesMePostsCopyWithImpl(
      _GetWhoLikesMePosts _value, $Res Function(_GetWhoLikesMePosts) _then)
      : super(_value, (v) => _then(v as _GetWhoLikesMePosts));

  @override
  _GetWhoLikesMePosts get _value => super._value as _GetWhoLikesMePosts;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_GetWhoLikesMePosts(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetWhoLikesMePosts
    with DiagnosticableTreeMixin
    implements _GetWhoLikesMePosts {
  const _$_GetWhoLikesMePosts(this.page);

  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.getWhoLikesMePosts(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.getWhoLikesMePosts'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetWhoLikesMePosts &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  _$GetWhoLikesMePostsCopyWith<_GetWhoLikesMePosts> get copyWith =>
      __$GetWhoLikesMePostsCopyWithImpl<_GetWhoLikesMePosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) getAllPostStream,
    required TResult Function(int page) getWhoLikesMePosts,
    required TResult Function(String postId, bool isLiked) likePost,
    required TResult Function(String postId) dismissPost,
    required TResult Function(Post post) createRoom,
  }) {
    return getWhoLikesMePosts(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
  }) {
    return getWhoLikesMePosts?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
    required TResult orElse(),
  }) {
    if (getWhoLikesMePosts != null) {
      return getWhoLikesMePosts(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPosts value) getAllPostStream,
    required TResult Function(_GetWhoLikesMePosts value) getWhoLikesMePosts,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_DismissPost value) dismissPost,
    required TResult Function(_CreateRoom value) createRoom,
  }) {
    return getWhoLikesMePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
  }) {
    return getWhoLikesMePosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
    required TResult orElse(),
  }) {
    if (getWhoLikesMePosts != null) {
      return getWhoLikesMePosts(this);
    }
    return orElse();
  }
}

abstract class _GetWhoLikesMePosts implements PostEvent {
  const factory _GetWhoLikesMePosts(int page) = _$_GetWhoLikesMePosts;

  int get page;
  @JsonKey(ignore: true)
  _$GetWhoLikesMePostsCopyWith<_GetWhoLikesMePosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikePostCopyWith<$Res> {
  factory _$LikePostCopyWith(_LikePost value, $Res Function(_LikePost) then) =
      __$LikePostCopyWithImpl<$Res>;
  $Res call({String postId, bool isLiked});
}

/// @nodoc
class __$LikePostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$LikePostCopyWith<$Res> {
  __$LikePostCopyWithImpl(_LikePost _value, $Res Function(_LikePost) _then)
      : super(_value, (v) => _then(v as _LikePost));

  @override
  _LikePost get _value => super._value as _LikePost;

  @override
  $Res call({
    Object? postId = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_LikePost(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LikePost with DiagnosticableTreeMixin implements _LikePost {
  const _$_LikePost(this.postId, this.isLiked);

  @override
  final String postId;
  @override
  final bool isLiked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.likePost(postId: $postId, isLiked: $isLiked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.likePost'))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('isLiked', isLiked));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikePost &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, isLiked);

  @JsonKey(ignore: true)
  @override
  _$LikePostCopyWith<_LikePost> get copyWith =>
      __$LikePostCopyWithImpl<_LikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) getAllPostStream,
    required TResult Function(int page) getWhoLikesMePosts,
    required TResult Function(String postId, bool isLiked) likePost,
    required TResult Function(String postId) dismissPost,
    required TResult Function(Post post) createRoom,
  }) {
    return likePost(postId, isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
  }) {
    return likePost?.call(postId, isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(postId, isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPosts value) getAllPostStream,
    required TResult Function(_GetWhoLikesMePosts value) getWhoLikesMePosts,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_DismissPost value) dismissPost,
    required TResult Function(_CreateRoom value) createRoom,
  }) {
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
  }) {
    return likePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class _LikePost implements PostEvent {
  const factory _LikePost(String postId, bool isLiked) = _$_LikePost;

  String get postId;
  bool get isLiked;
  @JsonKey(ignore: true)
  _$LikePostCopyWith<_LikePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissPostCopyWith<$Res> {
  factory _$DismissPostCopyWith(
          _DismissPost value, $Res Function(_DismissPost) then) =
      __$DismissPostCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$DismissPostCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$DismissPostCopyWith<$Res> {
  __$DismissPostCopyWithImpl(
      _DismissPost _value, $Res Function(_DismissPost) _then)
      : super(_value, (v) => _then(v as _DismissPost));

  @override
  _DismissPost get _value => super._value as _DismissPost;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_DismissPost(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DismissPost with DiagnosticableTreeMixin implements _DismissPost {
  const _$_DismissPost(this.postId);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.dismissPost(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.dismissPost'))
      ..add(DiagnosticsProperty('postId', postId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissPost &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  _$DismissPostCopyWith<_DismissPost> get copyWith =>
      __$DismissPostCopyWithImpl<_DismissPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) getAllPostStream,
    required TResult Function(int page) getWhoLikesMePosts,
    required TResult Function(String postId, bool isLiked) likePost,
    required TResult Function(String postId) dismissPost,
    required TResult Function(Post post) createRoom,
  }) {
    return dismissPost(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
  }) {
    return dismissPost?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
    required TResult orElse(),
  }) {
    if (dismissPost != null) {
      return dismissPost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPosts value) getAllPostStream,
    required TResult Function(_GetWhoLikesMePosts value) getWhoLikesMePosts,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_DismissPost value) dismissPost,
    required TResult Function(_CreateRoom value) createRoom,
  }) {
    return dismissPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
  }) {
    return dismissPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
    required TResult orElse(),
  }) {
    if (dismissPost != null) {
      return dismissPost(this);
    }
    return orElse();
  }
}

abstract class _DismissPost implements PostEvent {
  const factory _DismissPost(String postId) = _$_DismissPost;

  String get postId;
  @JsonKey(ignore: true)
  _$DismissPostCopyWith<_DismissPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateRoomCopyWith<$Res> {
  factory _$CreateRoomCopyWith(
          _CreateRoom value, $Res Function(_CreateRoom) then) =
      __$CreateRoomCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$CreateRoomCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$CreateRoomCopyWith<$Res> {
  __$CreateRoomCopyWithImpl(
      _CreateRoom _value, $Res Function(_CreateRoom) _then)
      : super(_value, (v) => _then(v as _CreateRoom));

  @override
  _CreateRoom get _value => super._value as _CreateRoom;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_CreateRoom(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_CreateRoom with DiagnosticableTreeMixin implements _CreateRoom {
  const _$_CreateRoom(this.post);

  @override
  final Post post;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.createRoom(post: $post)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.createRoom'))
      ..add(DiagnosticsProperty('post', post));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateRoom &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  _$CreateRoomCopyWith<_CreateRoom> get copyWith =>
      __$CreateRoomCopyWithImpl<_CreateRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) getAllPostStream,
    required TResult Function(int page) getWhoLikesMePosts,
    required TResult Function(String postId, bool isLiked) likePost,
    required TResult Function(String postId) dismissPost,
    required TResult Function(Post post) createRoom,
  }) {
    return createRoom(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
  }) {
    return createRoom?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double radius)? getAllPostStream,
    TResult Function(int page)? getWhoLikesMePosts,
    TResult Function(String postId, bool isLiked)? likePost,
    TResult Function(String postId)? dismissPost,
    TResult Function(Post post)? createRoom,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllPosts value) getAllPostStream,
    required TResult Function(_GetWhoLikesMePosts value) getWhoLikesMePosts,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_DismissPost value) dismissPost,
    required TResult Function(_CreateRoom value) createRoom,
  }) {
    return createRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
  }) {
    return createRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllPosts value)? getAllPostStream,
    TResult Function(_GetWhoLikesMePosts value)? getWhoLikesMePosts,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_DismissPost value)? dismissPost,
    TResult Function(_CreateRoom value)? createRoom,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateRoom implements PostEvent {
  const factory _CreateRoom(Post post) = _$_CreateRoom;

  Post get post;
  @JsonKey(ignore: true)
  _$CreateRoomCopyWith<_CreateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostStateTearOff {
  const _$PostStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsCreatingRoom isCreatingRoom() {
    return const _IsCreatingRoom();
  }

  _GetAllPostSuccess getAllPostStreamSuccess({required PostStream postStream}) {
    return _GetAllPostSuccess(
      postStream: postStream,
    );
  }

  _GetWhoLikesMeSuccess getWhoLikesMeSuccess(
      {required PostSnapshot postSnapshot}) {
    return _GetWhoLikesMeSuccess(
      postSnapshot: postSnapshot,
    );
  }

  _LikePostSuccess likePostSuccess(String postId, bool isLiked) {
    return _LikePostSuccess(
      postId,
      isLiked,
    );
  }

  _DismissPostSuccess dismissPostSuccess(String postId) {
    return _DismissPostSuccess(
      postId,
    );
  }

  _CreateRoomSuccess createRoomSuccess(String roomId) {
    return _CreateRoomSuccess(
      roomId,
    );
  }

  _Failure failure(PostFailure failure) {
    return _Failure(
      failure,
    );
  }

  _ChatFailure chatFailure(ChatFailure failure) {
    return _ChatFailure(
      failure,
    );
  }
}

/// @nodoc
const $PostState = _$PostStateTearOff();

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PostState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsCreatingRoomCopyWith<$Res> {
  factory _$IsCreatingRoomCopyWith(
          _IsCreatingRoom value, $Res Function(_IsCreatingRoom) then) =
      __$IsCreatingRoomCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsCreatingRoomCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$IsCreatingRoomCopyWith<$Res> {
  __$IsCreatingRoomCopyWithImpl(
      _IsCreatingRoom _value, $Res Function(_IsCreatingRoom) _then)
      : super(_value, (v) => _then(v as _IsCreatingRoom));

  @override
  _IsCreatingRoom get _value => super._value as _IsCreatingRoom;
}

/// @nodoc

class _$_IsCreatingRoom
    with DiagnosticableTreeMixin
    implements _IsCreatingRoom {
  const _$_IsCreatingRoom();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.isCreatingRoom()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PostState.isCreatingRoom'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IsCreatingRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return isCreatingRoom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return isCreatingRoom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (isCreatingRoom != null) {
      return isCreatingRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return isCreatingRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return isCreatingRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (isCreatingRoom != null) {
      return isCreatingRoom(this);
    }
    return orElse();
  }
}

abstract class _IsCreatingRoom implements PostState {
  const factory _IsCreatingRoom() = _$_IsCreatingRoom;
}

/// @nodoc
abstract class _$GetAllPostSuccessCopyWith<$Res> {
  factory _$GetAllPostSuccessCopyWith(
          _GetAllPostSuccess value, $Res Function(_GetAllPostSuccess) then) =
      __$GetAllPostSuccessCopyWithImpl<$Res>;
  $Res call({PostStream postStream});

  $PostStreamCopyWith<$Res> get postStream;
}

/// @nodoc
class __$GetAllPostSuccessCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$GetAllPostSuccessCopyWith<$Res> {
  __$GetAllPostSuccessCopyWithImpl(
      _GetAllPostSuccess _value, $Res Function(_GetAllPostSuccess) _then)
      : super(_value, (v) => _then(v as _GetAllPostSuccess));

  @override
  _GetAllPostSuccess get _value => super._value as _GetAllPostSuccess;

  @override
  $Res call({
    Object? postStream = freezed,
  }) {
    return _then(_GetAllPostSuccess(
      postStream: postStream == freezed
          ? _value.postStream
          : postStream // ignore: cast_nullable_to_non_nullable
              as PostStream,
    ));
  }

  @override
  $PostStreamCopyWith<$Res> get postStream {
    return $PostStreamCopyWith<$Res>(_value.postStream, (value) {
      return _then(_value.copyWith(postStream: value));
    });
  }
}

/// @nodoc

class _$_GetAllPostSuccess
    with DiagnosticableTreeMixin
    implements _GetAllPostSuccess {
  const _$_GetAllPostSuccess({required this.postStream});

  @override
  final PostStream postStream;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.getAllPostStreamSuccess(postStream: $postStream)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState.getAllPostStreamSuccess'))
      ..add(DiagnosticsProperty('postStream', postStream));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllPostSuccess &&
            (identical(other.postStream, postStream) ||
                other.postStream == postStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postStream);

  @JsonKey(ignore: true)
  @override
  _$GetAllPostSuccessCopyWith<_GetAllPostSuccess> get copyWith =>
      __$GetAllPostSuccessCopyWithImpl<_GetAllPostSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return getAllPostStreamSuccess(postStream);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return getAllPostStreamSuccess?.call(postStream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (getAllPostStreamSuccess != null) {
      return getAllPostStreamSuccess(postStream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return getAllPostStreamSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return getAllPostStreamSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (getAllPostStreamSuccess != null) {
      return getAllPostStreamSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetAllPostSuccess implements PostState {
  const factory _GetAllPostSuccess({required PostStream postStream}) =
      _$_GetAllPostSuccess;

  PostStream get postStream;
  @JsonKey(ignore: true)
  _$GetAllPostSuccessCopyWith<_GetAllPostSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetWhoLikesMeSuccessCopyWith<$Res> {
  factory _$GetWhoLikesMeSuccessCopyWith(_GetWhoLikesMeSuccess value,
          $Res Function(_GetWhoLikesMeSuccess) then) =
      __$GetWhoLikesMeSuccessCopyWithImpl<$Res>;
  $Res call({PostSnapshot postSnapshot});

  $PostSnapshotCopyWith<$Res> get postSnapshot;
}

/// @nodoc
class __$GetWhoLikesMeSuccessCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$GetWhoLikesMeSuccessCopyWith<$Res> {
  __$GetWhoLikesMeSuccessCopyWithImpl(
      _GetWhoLikesMeSuccess _value, $Res Function(_GetWhoLikesMeSuccess) _then)
      : super(_value, (v) => _then(v as _GetWhoLikesMeSuccess));

  @override
  _GetWhoLikesMeSuccess get _value => super._value as _GetWhoLikesMeSuccess;

  @override
  $Res call({
    Object? postSnapshot = freezed,
  }) {
    return _then(_GetWhoLikesMeSuccess(
      postSnapshot: postSnapshot == freezed
          ? _value.postSnapshot
          : postSnapshot // ignore: cast_nullable_to_non_nullable
              as PostSnapshot,
    ));
  }

  @override
  $PostSnapshotCopyWith<$Res> get postSnapshot {
    return $PostSnapshotCopyWith<$Res>(_value.postSnapshot, (value) {
      return _then(_value.copyWith(postSnapshot: value));
    });
  }
}

/// @nodoc

class _$_GetWhoLikesMeSuccess
    with DiagnosticableTreeMixin
    implements _GetWhoLikesMeSuccess {
  const _$_GetWhoLikesMeSuccess({required this.postSnapshot});

  @override
  final PostSnapshot postSnapshot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.getWhoLikesMeSuccess(postSnapshot: $postSnapshot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState.getWhoLikesMeSuccess'))
      ..add(DiagnosticsProperty('postSnapshot', postSnapshot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetWhoLikesMeSuccess &&
            (identical(other.postSnapshot, postSnapshot) ||
                other.postSnapshot == postSnapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postSnapshot);

  @JsonKey(ignore: true)
  @override
  _$GetWhoLikesMeSuccessCopyWith<_GetWhoLikesMeSuccess> get copyWith =>
      __$GetWhoLikesMeSuccessCopyWithImpl<_GetWhoLikesMeSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return getWhoLikesMeSuccess(postSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return getWhoLikesMeSuccess?.call(postSnapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (getWhoLikesMeSuccess != null) {
      return getWhoLikesMeSuccess(postSnapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return getWhoLikesMeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return getWhoLikesMeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (getWhoLikesMeSuccess != null) {
      return getWhoLikesMeSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetWhoLikesMeSuccess implements PostState {
  const factory _GetWhoLikesMeSuccess({required PostSnapshot postSnapshot}) =
      _$_GetWhoLikesMeSuccess;

  PostSnapshot get postSnapshot;
  @JsonKey(ignore: true)
  _$GetWhoLikesMeSuccessCopyWith<_GetWhoLikesMeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikePostSuccessCopyWith<$Res> {
  factory _$LikePostSuccessCopyWith(
          _LikePostSuccess value, $Res Function(_LikePostSuccess) then) =
      __$LikePostSuccessCopyWithImpl<$Res>;
  $Res call({String postId, bool isLiked});
}

/// @nodoc
class __$LikePostSuccessCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$LikePostSuccessCopyWith<$Res> {
  __$LikePostSuccessCopyWithImpl(
      _LikePostSuccess _value, $Res Function(_LikePostSuccess) _then)
      : super(_value, (v) => _then(v as _LikePostSuccess));

  @override
  _LikePostSuccess get _value => super._value as _LikePostSuccess;

  @override
  $Res call({
    Object? postId = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_LikePostSuccess(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LikePostSuccess
    with DiagnosticableTreeMixin
    implements _LikePostSuccess {
  const _$_LikePostSuccess(this.postId, this.isLiked);

  @override
  final String postId;
  @override
  final bool isLiked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.likePostSuccess(postId: $postId, isLiked: $isLiked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState.likePostSuccess'))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('isLiked', isLiked));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikePostSuccess &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, isLiked);

  @JsonKey(ignore: true)
  @override
  _$LikePostSuccessCopyWith<_LikePostSuccess> get copyWith =>
      __$LikePostSuccessCopyWithImpl<_LikePostSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return likePostSuccess(postId, isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return likePostSuccess?.call(postId, isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (likePostSuccess != null) {
      return likePostSuccess(postId, isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return likePostSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return likePostSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (likePostSuccess != null) {
      return likePostSuccess(this);
    }
    return orElse();
  }
}

abstract class _LikePostSuccess implements PostState {
  const factory _LikePostSuccess(String postId, bool isLiked) =
      _$_LikePostSuccess;

  String get postId;
  bool get isLiked;
  @JsonKey(ignore: true)
  _$LikePostSuccessCopyWith<_LikePostSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissPostSuccessCopyWith<$Res> {
  factory _$DismissPostSuccessCopyWith(
          _DismissPostSuccess value, $Res Function(_DismissPostSuccess) then) =
      __$DismissPostSuccessCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$DismissPostSuccessCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$DismissPostSuccessCopyWith<$Res> {
  __$DismissPostSuccessCopyWithImpl(
      _DismissPostSuccess _value, $Res Function(_DismissPostSuccess) _then)
      : super(_value, (v) => _then(v as _DismissPostSuccess));

  @override
  _DismissPostSuccess get _value => super._value as _DismissPostSuccess;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_DismissPostSuccess(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DismissPostSuccess
    with DiagnosticableTreeMixin
    implements _DismissPostSuccess {
  const _$_DismissPostSuccess(this.postId);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.dismissPostSuccess(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState.dismissPostSuccess'))
      ..add(DiagnosticsProperty('postId', postId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissPostSuccess &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  _$DismissPostSuccessCopyWith<_DismissPostSuccess> get copyWith =>
      __$DismissPostSuccessCopyWithImpl<_DismissPostSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return dismissPostSuccess(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return dismissPostSuccess?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (dismissPostSuccess != null) {
      return dismissPostSuccess(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return dismissPostSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return dismissPostSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (dismissPostSuccess != null) {
      return dismissPostSuccess(this);
    }
    return orElse();
  }
}

abstract class _DismissPostSuccess implements PostState {
  const factory _DismissPostSuccess(String postId) = _$_DismissPostSuccess;

  String get postId;
  @JsonKey(ignore: true)
  _$DismissPostSuccessCopyWith<_DismissPostSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateRoomSuccessCopyWith<$Res> {
  factory _$CreateRoomSuccessCopyWith(
          _CreateRoomSuccess value, $Res Function(_CreateRoomSuccess) then) =
      __$CreateRoomSuccessCopyWithImpl<$Res>;
  $Res call({String roomId});
}

/// @nodoc
class __$CreateRoomSuccessCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$CreateRoomSuccessCopyWith<$Res> {
  __$CreateRoomSuccessCopyWithImpl(
      _CreateRoomSuccess _value, $Res Function(_CreateRoomSuccess) _then)
      : super(_value, (v) => _then(v as _CreateRoomSuccess));

  @override
  _CreateRoomSuccess get _value => super._value as _CreateRoomSuccess;

  @override
  $Res call({
    Object? roomId = freezed,
  }) {
    return _then(_CreateRoomSuccess(
      roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateRoomSuccess
    with DiagnosticableTreeMixin
    implements _CreateRoomSuccess {
  const _$_CreateRoomSuccess(this.roomId);

  @override
  final String roomId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.createRoomSuccess(roomId: $roomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState.createRoomSuccess'))
      ..add(DiagnosticsProperty('roomId', roomId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateRoomSuccess &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  _$CreateRoomSuccessCopyWith<_CreateRoomSuccess> get copyWith =>
      __$CreateRoomSuccessCopyWithImpl<_CreateRoomSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return createRoomSuccess(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return createRoomSuccess?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (createRoomSuccess != null) {
      return createRoomSuccess(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return createRoomSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return createRoomSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (createRoomSuccess != null) {
      return createRoomSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateRoomSuccess implements PostState {
  const factory _CreateRoomSuccess(String roomId) = _$_CreateRoomSuccess;

  String get roomId;
  @JsonKey(ignore: true)
  _$CreateRoomSuccessCopyWith<_CreateRoomSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({PostFailure failure});

  $PostFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get failure {
    return $PostFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  const _$_Failure(this.failure);

  @override
  final PostFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.failure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState.failure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements PostState {
  const factory _Failure(PostFailure failure) = _$_Failure;

  PostFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChatFailureCopyWith<$Res> {
  factory _$ChatFailureCopyWith(
          _ChatFailure value, $Res Function(_ChatFailure) then) =
      __$ChatFailureCopyWithImpl<$Res>;
  $Res call({ChatFailure failure});

  $ChatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ChatFailureCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$ChatFailureCopyWith<$Res> {
  __$ChatFailureCopyWithImpl(
      _ChatFailure _value, $Res Function(_ChatFailure) _then)
      : super(_value, (v) => _then(v as _ChatFailure));

  @override
  _ChatFailure get _value => super._value as _ChatFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_ChatFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ChatFailure,
    ));
  }

  @override
  $ChatFailureCopyWith<$Res> get failure {
    return $ChatFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_ChatFailure with DiagnosticableTreeMixin implements _ChatFailure {
  const _$_ChatFailure(this.failure);

  @override
  final ChatFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState.chatFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState.chatFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$ChatFailureCopyWith<_ChatFailure> get copyWith =>
      __$ChatFailureCopyWithImpl<_ChatFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isCreatingRoom,
    required TResult Function(PostStream postStream) getAllPostStreamSuccess,
    required TResult Function(PostSnapshot postSnapshot) getWhoLikesMeSuccess,
    required TResult Function(String postId, bool isLiked) likePostSuccess,
    required TResult Function(String postId) dismissPostSuccess,
    required TResult Function(String roomId) createRoomSuccess,
    required TResult Function(PostFailure failure) failure,
    required TResult Function(ChatFailure failure) chatFailure,
  }) {
    return chatFailure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
  }) {
    return chatFailure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isCreatingRoom,
    TResult Function(PostStream postStream)? getAllPostStreamSuccess,
    TResult Function(PostSnapshot postSnapshot)? getWhoLikesMeSuccess,
    TResult Function(String postId, bool isLiked)? likePostSuccess,
    TResult Function(String postId)? dismissPostSuccess,
    TResult Function(String roomId)? createRoomSuccess,
    TResult Function(PostFailure failure)? failure,
    TResult Function(ChatFailure failure)? chatFailure,
    required TResult orElse(),
  }) {
    if (chatFailure != null) {
      return chatFailure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsCreatingRoom value) isCreatingRoom,
    required TResult Function(_GetAllPostSuccess value) getAllPostStreamSuccess,
    required TResult Function(_GetWhoLikesMeSuccess value) getWhoLikesMeSuccess,
    required TResult Function(_LikePostSuccess value) likePostSuccess,
    required TResult Function(_DismissPostSuccess value) dismissPostSuccess,
    required TResult Function(_CreateRoomSuccess value) createRoomSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChatFailure value) chatFailure,
  }) {
    return chatFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
  }) {
    return chatFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsCreatingRoom value)? isCreatingRoom,
    TResult Function(_GetAllPostSuccess value)? getAllPostStreamSuccess,
    TResult Function(_GetWhoLikesMeSuccess value)? getWhoLikesMeSuccess,
    TResult Function(_LikePostSuccess value)? likePostSuccess,
    TResult Function(_DismissPostSuccess value)? dismissPostSuccess,
    TResult Function(_CreateRoomSuccess value)? createRoomSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChatFailure value)? chatFailure,
    required TResult orElse(),
  }) {
    if (chatFailure != null) {
      return chatFailure(this);
    }
    return orElse();
  }
}

abstract class _ChatFailure implements PostState {
  const factory _ChatFailure(ChatFailure failure) = _$_ChatFailure;

  ChatFailure get failure;
  @JsonKey(ignore: true)
  _$ChatFailureCopyWith<_ChatFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
