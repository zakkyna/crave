// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {required String uid,
      required bool isPublished,
      required int genderId,
      required List<String> photos,
      ProfileLocation? location,
      required String? bio,
      required String? city,
      required String? address,
      required String? state,
      required List<String> likedBy,
      required Map<String, dynamic>? dismissedBy}) {
    return _Post(
      uid: uid,
      isPublished: isPublished,
      genderId: genderId,
      photos: photos,
      location: location,
      bio: bio,
      city: city,
      address: address,
      state: state,
      likedBy: likedBy,
      dismissedBy: dismissedBy,
    );
  }

  Post fromJson(Map<String, Object?> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  String get uid => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  int get genderId => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  ProfileLocation? get location => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  List<String> get likedBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get dismissedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      bool isPublished,
      int genderId,
      List<String> photos,
      ProfileLocation? location,
      String? bio,
      String? city,
      String? address,
      String? state,
      List<String> likedBy,
      Map<String, dynamic>? dismissedBy});

  $ProfileLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? isPublished = freezed,
    Object? genderId = freezed,
    Object? photos = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? state = freezed,
    Object? likedBy = freezed,
    Object? dismissedBy = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      genderId: genderId == freezed
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ProfileLocation?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dismissedBy: dismissedBy == freezed
          ? _value.dismissedBy
          : dismissedBy // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  @override
  $ProfileLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $ProfileLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      bool isPublished,
      int genderId,
      List<String> photos,
      ProfileLocation? location,
      String? bio,
      String? city,
      String? address,
      String? state,
      List<String> likedBy,
      Map<String, dynamic>? dismissedBy});

  @override
  $ProfileLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? uid = freezed,
    Object? isPublished = freezed,
    Object? genderId = freezed,
    Object? photos = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? state = freezed,
    Object? likedBy = freezed,
    Object? dismissedBy = freezed,
  }) {
    return _then(_Post(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      genderId: genderId == freezed
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ProfileLocation?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dismissedBy: dismissedBy == freezed
          ? _value.dismissedBy
          : dismissedBy // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Post extends _Post {
  const _$_Post(
      {required this.uid,
      required this.isPublished,
      required this.genderId,
      required this.photos,
      this.location,
      required this.bio,
      required this.city,
      required this.address,
      required this.state,
      required this.likedBy,
      required this.dismissedBy})
      : super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String uid;
  @override
  final bool isPublished;
  @override
  final int genderId;
  @override
  final List<String> photos;
  @override
  final ProfileLocation? location;
  @override
  final String? bio;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? state;
  @override
  final List<String> likedBy;
  @override
  final Map<String, dynamic>? dismissedBy;

  @override
  String toString() {
    return 'Post(uid: $uid, isPublished: $isPublished, genderId: $genderId, photos: $photos, location: $location, bio: $bio, city: $city, address: $address, state: $state, likedBy: $likedBy, dismissedBy: $dismissedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other.likedBy, likedBy) &&
            const DeepCollectionEquality()
                .equals(other.dismissedBy, dismissedBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      isPublished,
      genderId,
      const DeepCollectionEquality().hash(photos),
      location,
      bio,
      city,
      address,
      state,
      const DeepCollectionEquality().hash(likedBy),
      const DeepCollectionEquality().hash(dismissedBy));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {required String uid,
      required bool isPublished,
      required int genderId,
      required List<String> photos,
      ProfileLocation? location,
      required String? bio,
      required String? city,
      required String? address,
      required String? state,
      required List<String> likedBy,
      required Map<String, dynamic>? dismissedBy}) = _$_Post;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get uid;
  @override
  bool get isPublished;
  @override
  int get genderId;
  @override
  List<String> get photos;
  @override
  ProfileLocation? get location;
  @override
  String? get bio;
  @override
  String? get city;
  @override
  String? get address;
  @override
  String? get state;
  @override
  List<String> get likedBy;
  @override
  Map<String, dynamic>? get dismissedBy;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
