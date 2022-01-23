// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileLocation _$ProfileLocationFromJson(Map<String, dynamic> json) {
  return _ProfileLocation.fromJson(json);
}

/// @nodoc
class _$ProfileLocationTearOff {
  const _$ProfileLocationTearOff();

  _ProfileLocation call(
      {required String geohash,
      @GeoPointConverter() required GeoPoint geopoint}) {
    return _ProfileLocation(
      geohash: geohash,
      geopoint: geopoint,
    );
  }

  ProfileLocation fromJson(Map<String, Object?> json) {
    return ProfileLocation.fromJson(json);
  }
}

/// @nodoc
const $ProfileLocation = _$ProfileLocationTearOff();

/// @nodoc
mixin _$ProfileLocation {
  String get geohash => throw _privateConstructorUsedError;
  @GeoPointConverter()
  GeoPoint get geopoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileLocationCopyWith<ProfileLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileLocationCopyWith<$Res> {
  factory $ProfileLocationCopyWith(
          ProfileLocation value, $Res Function(ProfileLocation) then) =
      _$ProfileLocationCopyWithImpl<$Res>;
  $Res call({String geohash, @GeoPointConverter() GeoPoint geopoint});
}

/// @nodoc
class _$ProfileLocationCopyWithImpl<$Res>
    implements $ProfileLocationCopyWith<$Res> {
  _$ProfileLocationCopyWithImpl(this._value, this._then);

  final ProfileLocation _value;
  // ignore: unused_field
  final $Res Function(ProfileLocation) _then;

  @override
  $Res call({
    Object? geohash = freezed,
    Object? geopoint = freezed,
  }) {
    return _then(_value.copyWith(
      geohash: geohash == freezed
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String,
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
abstract class _$ProfileLocationCopyWith<$Res>
    implements $ProfileLocationCopyWith<$Res> {
  factory _$ProfileLocationCopyWith(
          _ProfileLocation value, $Res Function(_ProfileLocation) then) =
      __$ProfileLocationCopyWithImpl<$Res>;
  @override
  $Res call({String geohash, @GeoPointConverter() GeoPoint geopoint});
}

/// @nodoc
class __$ProfileLocationCopyWithImpl<$Res>
    extends _$ProfileLocationCopyWithImpl<$Res>
    implements _$ProfileLocationCopyWith<$Res> {
  __$ProfileLocationCopyWithImpl(
      _ProfileLocation _value, $Res Function(_ProfileLocation) _then)
      : super(_value, (v) => _then(v as _ProfileLocation));

  @override
  _ProfileLocation get _value => super._value as _ProfileLocation;

  @override
  $Res call({
    Object? geohash = freezed,
    Object? geopoint = freezed,
  }) {
    return _then(_ProfileLocation(
      geohash: geohash == freezed
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String,
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileLocation implements _ProfileLocation {
  const _$_ProfileLocation(
      {required this.geohash, @GeoPointConverter() required this.geopoint});

  factory _$_ProfileLocation.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileLocationFromJson(json);

  @override
  final String geohash;
  @override
  @GeoPointConverter()
  final GeoPoint geopoint;

  @override
  String toString() {
    return 'ProfileLocation(geohash: $geohash, geopoint: $geopoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileLocation &&
            (identical(other.geohash, geohash) || other.geohash == geohash) &&
            (identical(other.geopoint, geopoint) ||
                other.geopoint == geopoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geohash, geopoint);

  @JsonKey(ignore: true)
  @override
  _$ProfileLocationCopyWith<_ProfileLocation> get copyWith =>
      __$ProfileLocationCopyWithImpl<_ProfileLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileLocationToJson(this);
  }
}

abstract class _ProfileLocation implements ProfileLocation {
  const factory _ProfileLocation(
      {required String geohash,
      @GeoPointConverter() required GeoPoint geopoint}) = _$_ProfileLocation;

  factory _ProfileLocation.fromJson(Map<String, dynamic> json) =
      _$_ProfileLocation.fromJson;

  @override
  String get geohash;
  @override
  @GeoPointConverter()
  GeoPoint get geopoint;
  @override
  @JsonKey(ignore: true)
  _$ProfileLocationCopyWith<_ProfileLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
