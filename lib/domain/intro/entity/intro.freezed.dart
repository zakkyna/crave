// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'intro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IntroTearOff {
  const _$IntroTearOff();

  _Intro call(
      {required String asset,
      required String title,
      required String description}) {
    return _Intro(
      asset: asset,
      title: title,
      description: description,
    );
  }
}

/// @nodoc
const $Intro = _$IntroTearOff();

/// @nodoc
mixin _$Intro {
  String get asset => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroCopyWith<Intro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroCopyWith<$Res> {
  factory $IntroCopyWith(Intro value, $Res Function(Intro) then) =
      _$IntroCopyWithImpl<$Res>;
  $Res call({String asset, String title, String description});
}

/// @nodoc
class _$IntroCopyWithImpl<$Res> implements $IntroCopyWith<$Res> {
  _$IntroCopyWithImpl(this._value, this._then);

  final Intro _value;
  // ignore: unused_field
  final $Res Function(Intro) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IntroCopyWith<$Res> implements $IntroCopyWith<$Res> {
  factory _$IntroCopyWith(_Intro value, $Res Function(_Intro) then) =
      __$IntroCopyWithImpl<$Res>;
  @override
  $Res call({String asset, String title, String description});
}

/// @nodoc
class __$IntroCopyWithImpl<$Res> extends _$IntroCopyWithImpl<$Res>
    implements _$IntroCopyWith<$Res> {
  __$IntroCopyWithImpl(_Intro _value, $Res Function(_Intro) _then)
      : super(_value, (v) => _then(v as _Intro));

  @override
  _Intro get _value => super._value as _Intro;

  @override
  $Res call({
    Object? asset = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_Intro(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Intro implements _Intro {
  const _$_Intro(
      {required this.asset, required this.title, required this.description});

  @override
  final String asset;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'Intro(asset: $asset, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Intro &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset, title, description);

  @JsonKey(ignore: true)
  @override
  _$IntroCopyWith<_Intro> get copyWith =>
      __$IntroCopyWithImpl<_Intro>(this, _$identity);
}

abstract class _Intro implements Intro {
  const factory _Intro(
      {required String asset,
      required String title,
      required String description}) = _$_Intro;

  @override
  String get asset;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$IntroCopyWith<_Intro> get copyWith => throw _privateConstructorUsedError;
}
