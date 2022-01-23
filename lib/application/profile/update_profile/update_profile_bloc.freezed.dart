// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateProfileEventTearOff {
  const _$UpdateProfileEventTearOff();

  _Init init(Profile profile) {
    return _Init(
      profile,
    );
  }

  _BioChanged bioChanged(String bioStr) {
    return _BioChanged(
      bioStr,
    );
  }

  _AddPhotoViaCamera addPhotoViaCamera() {
    return const _AddPhotoViaCamera();
  }

  _AddPhotoViaGallery addPhotoViaGallery() {
    return const _AddPhotoViaGallery();
  }

  _UploadPhoto uploadPhoto(String path) {
    return _UploadPhoto(
      path,
    );
  }

  _SuccessUpload successUpload(String path) {
    return _SuccessUpload(
      path,
    );
  }

  _DeletePhoto deletePhoto(String url) {
    return _DeletePhoto(
      url,
    );
  }

  _SuccessDelete successDelete(String url) {
    return _SuccessDelete(
      url,
    );
  }

  _PostPressed postPressed() {
    return const _PostPressed();
  }

  _Reset reset() {
    return const _Reset();
  }
}

/// @nodoc
const $UpdateProfileEvent = _$UpdateProfileEventTearOff();

/// @nodoc
mixin _$UpdateProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._value, this._then);

  final UpdateProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileEvent) _then;
}

/// @nodoc
abstract class _$InitCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) then) =
      __$InitCopyWithImpl<$Res>;
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$InitCopyWithImpl<$Res> extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(_Init _value, $Res Function(_Init) _then)
      : super(_value, (v) => _then(v as _Init));

  @override
  _Init get _value => super._value as _Init;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_Init(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'UpdateProfileEvent.init(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Init &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  _$InitCopyWith<_Init> get copyWith =>
      __$InitCopyWithImpl<_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return init(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return init?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements UpdateProfileEvent {
  const factory _Init(Profile profile) = _$_Init;

  Profile get profile;
  @JsonKey(ignore: true)
  _$InitCopyWith<_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BioChangedCopyWith<$Res> {
  factory _$BioChangedCopyWith(
          _BioChanged value, $Res Function(_BioChanged) then) =
      __$BioChangedCopyWithImpl<$Res>;
  $Res call({String bioStr});
}

/// @nodoc
class __$BioChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$BioChangedCopyWith<$Res> {
  __$BioChangedCopyWithImpl(
      _BioChanged _value, $Res Function(_BioChanged) _then)
      : super(_value, (v) => _then(v as _BioChanged));

  @override
  _BioChanged get _value => super._value as _BioChanged;

  @override
  $Res call({
    Object? bioStr = freezed,
  }) {
    return _then(_BioChanged(
      bioStr == freezed
          ? _value.bioStr
          : bioStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BioChanged implements _BioChanged {
  const _$_BioChanged(this.bioStr);

  @override
  final String bioStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.bioChanged(bioStr: $bioStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BioChanged &&
            (identical(other.bioStr, bioStr) || other.bioStr == bioStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bioStr);

  @JsonKey(ignore: true)
  @override
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return bioChanged(bioStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return bioChanged?.call(bioStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(bioStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return bioChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements UpdateProfileEvent {
  const factory _BioChanged(String bioStr) = _$_BioChanged;

  String get bioStr;
  @JsonKey(ignore: true)
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddPhotoViaCameraCopyWith<$Res> {
  factory _$AddPhotoViaCameraCopyWith(
          _AddPhotoViaCamera value, $Res Function(_AddPhotoViaCamera) then) =
      __$AddPhotoViaCameraCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddPhotoViaCameraCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$AddPhotoViaCameraCopyWith<$Res> {
  __$AddPhotoViaCameraCopyWithImpl(
      _AddPhotoViaCamera _value, $Res Function(_AddPhotoViaCamera) _then)
      : super(_value, (v) => _then(v as _AddPhotoViaCamera));

  @override
  _AddPhotoViaCamera get _value => super._value as _AddPhotoViaCamera;
}

/// @nodoc

class _$_AddPhotoViaCamera implements _AddPhotoViaCamera {
  const _$_AddPhotoViaCamera();

  @override
  String toString() {
    return 'UpdateProfileEvent.addPhotoViaCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddPhotoViaCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return addPhotoViaCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return addPhotoViaCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addPhotoViaCamera != null) {
      return addPhotoViaCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return addPhotoViaCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return addPhotoViaCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addPhotoViaCamera != null) {
      return addPhotoViaCamera(this);
    }
    return orElse();
  }
}

abstract class _AddPhotoViaCamera implements UpdateProfileEvent {
  const factory _AddPhotoViaCamera() = _$_AddPhotoViaCamera;
}

/// @nodoc
abstract class _$AddPhotoViaGalleryCopyWith<$Res> {
  factory _$AddPhotoViaGalleryCopyWith(
          _AddPhotoViaGallery value, $Res Function(_AddPhotoViaGallery) then) =
      __$AddPhotoViaGalleryCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddPhotoViaGalleryCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$AddPhotoViaGalleryCopyWith<$Res> {
  __$AddPhotoViaGalleryCopyWithImpl(
      _AddPhotoViaGallery _value, $Res Function(_AddPhotoViaGallery) _then)
      : super(_value, (v) => _then(v as _AddPhotoViaGallery));

  @override
  _AddPhotoViaGallery get _value => super._value as _AddPhotoViaGallery;
}

/// @nodoc

class _$_AddPhotoViaGallery implements _AddPhotoViaGallery {
  const _$_AddPhotoViaGallery();

  @override
  String toString() {
    return 'UpdateProfileEvent.addPhotoViaGallery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddPhotoViaGallery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return addPhotoViaGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return addPhotoViaGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addPhotoViaGallery != null) {
      return addPhotoViaGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return addPhotoViaGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return addPhotoViaGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addPhotoViaGallery != null) {
      return addPhotoViaGallery(this);
    }
    return orElse();
  }
}

abstract class _AddPhotoViaGallery implements UpdateProfileEvent {
  const factory _AddPhotoViaGallery() = _$_AddPhotoViaGallery;
}

/// @nodoc
abstract class _$UploadPhotoCopyWith<$Res> {
  factory _$UploadPhotoCopyWith(
          _UploadPhoto value, $Res Function(_UploadPhoto) then) =
      __$UploadPhotoCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class __$UploadPhotoCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$UploadPhotoCopyWith<$Res> {
  __$UploadPhotoCopyWithImpl(
      _UploadPhoto _value, $Res Function(_UploadPhoto) _then)
      : super(_value, (v) => _then(v as _UploadPhoto));

  @override
  _UploadPhoto get _value => super._value as _UploadPhoto;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_UploadPhoto(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UploadPhoto implements _UploadPhoto {
  const _$_UploadPhoto(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'UpdateProfileEvent.uploadPhoto(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadPhoto &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  _$UploadPhotoCopyWith<_UploadPhoto> get copyWith =>
      __$UploadPhotoCopyWithImpl<_UploadPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return uploadPhoto(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return uploadPhoto?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return uploadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return uploadPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto(this);
    }
    return orElse();
  }
}

abstract class _UploadPhoto implements UpdateProfileEvent {
  const factory _UploadPhoto(String path) = _$_UploadPhoto;

  String get path;
  @JsonKey(ignore: true)
  _$UploadPhotoCopyWith<_UploadPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessUploadCopyWith<$Res> {
  factory _$SuccessUploadCopyWith(
          _SuccessUpload value, $Res Function(_SuccessUpload) then) =
      __$SuccessUploadCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class __$SuccessUploadCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$SuccessUploadCopyWith<$Res> {
  __$SuccessUploadCopyWithImpl(
      _SuccessUpload _value, $Res Function(_SuccessUpload) _then)
      : super(_value, (v) => _then(v as _SuccessUpload));

  @override
  _SuccessUpload get _value => super._value as _SuccessUpload;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_SuccessUpload(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessUpload implements _SuccessUpload {
  const _$_SuccessUpload(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'UpdateProfileEvent.successUpload(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessUpload &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  _$SuccessUploadCopyWith<_SuccessUpload> get copyWith =>
      __$SuccessUploadCopyWithImpl<_SuccessUpload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return successUpload(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return successUpload?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (successUpload != null) {
      return successUpload(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return successUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return successUpload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (successUpload != null) {
      return successUpload(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpload implements UpdateProfileEvent {
  const factory _SuccessUpload(String path) = _$_SuccessUpload;

  String get path;
  @JsonKey(ignore: true)
  _$SuccessUploadCopyWith<_SuccessUpload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeletePhotoCopyWith<$Res> {
  factory _$DeletePhotoCopyWith(
          _DeletePhoto value, $Res Function(_DeletePhoto) then) =
      __$DeletePhotoCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$DeletePhotoCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$DeletePhotoCopyWith<$Res> {
  __$DeletePhotoCopyWithImpl(
      _DeletePhoto _value, $Res Function(_DeletePhoto) _then)
      : super(_value, (v) => _then(v as _DeletePhoto));

  @override
  _DeletePhoto get _value => super._value as _DeletePhoto;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_DeletePhoto(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeletePhoto implements _DeletePhoto {
  const _$_DeletePhoto(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'UpdateProfileEvent.deletePhoto(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeletePhoto &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  _$DeletePhotoCopyWith<_DeletePhoto> get copyWith =>
      __$DeletePhotoCopyWithImpl<_DeletePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return deletePhoto(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return deletePhoto?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (deletePhoto != null) {
      return deletePhoto(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return deletePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return deletePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (deletePhoto != null) {
      return deletePhoto(this);
    }
    return orElse();
  }
}

abstract class _DeletePhoto implements UpdateProfileEvent {
  const factory _DeletePhoto(String url) = _$_DeletePhoto;

  String get url;
  @JsonKey(ignore: true)
  _$DeletePhotoCopyWith<_DeletePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessDeleteCopyWith<$Res> {
  factory _$SuccessDeleteCopyWith(
          _SuccessDelete value, $Res Function(_SuccessDelete) then) =
      __$SuccessDeleteCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$SuccessDeleteCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$SuccessDeleteCopyWith<$Res> {
  __$SuccessDeleteCopyWithImpl(
      _SuccessDelete _value, $Res Function(_SuccessDelete) _then)
      : super(_value, (v) => _then(v as _SuccessDelete));

  @override
  _SuccessDelete get _value => super._value as _SuccessDelete;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_SuccessDelete(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessDelete implements _SuccessDelete {
  const _$_SuccessDelete(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'UpdateProfileEvent.successDelete(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessDelete &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  _$SuccessDeleteCopyWith<_SuccessDelete> get copyWith =>
      __$SuccessDeleteCopyWithImpl<_SuccessDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return successDelete(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return successDelete?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return successDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return successDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete(this);
    }
    return orElse();
  }
}

abstract class _SuccessDelete implements UpdateProfileEvent {
  const factory _SuccessDelete(String url) = _$_SuccessDelete;

  String get url;
  @JsonKey(ignore: true)
  _$SuccessDeleteCopyWith<_SuccessDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostPressedCopyWith<$Res> {
  factory _$PostPressedCopyWith(
          _PostPressed value, $Res Function(_PostPressed) then) =
      __$PostPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostPressedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$PostPressedCopyWith<$Res> {
  __$PostPressedCopyWithImpl(
      _PostPressed _value, $Res Function(_PostPressed) _then)
      : super(_value, (v) => _then(v as _PostPressed));

  @override
  _PostPressed get _value => super._value as _PostPressed;
}

/// @nodoc

class _$_PostPressed implements _PostPressed {
  const _$_PostPressed();

  @override
  String toString() {
    return 'UpdateProfileEvent.postPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return postPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return postPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (postPressed != null) {
      return postPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return postPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return postPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (postPressed != null) {
      return postPressed(this);
    }
    return orElse();
  }
}

abstract class _PostPressed implements UpdateProfileEvent {
  const factory _PostPressed() = _$_PostPressed;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'UpdateProfileEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) init,
    required TResult Function(String bioStr) bioChanged,
    required TResult Function() addPhotoViaCamera,
    required TResult Function() addPhotoViaGallery,
    required TResult Function(String path) uploadPhoto,
    required TResult Function(String path) successUpload,
    required TResult Function(String url) deletePhoto,
    required TResult Function(String url) successDelete,
    required TResult Function() postPressed,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? init,
    TResult Function(String bioStr)? bioChanged,
    TResult Function()? addPhotoViaCamera,
    TResult Function()? addPhotoViaGallery,
    TResult Function(String path)? uploadPhoto,
    TResult Function(String path)? successUpload,
    TResult Function(String url)? deletePhoto,
    TResult Function(String url)? successDelete,
    TResult Function()? postPressed,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BioChanged value) bioChanged,
    required TResult Function(_AddPhotoViaCamera value) addPhotoViaCamera,
    required TResult Function(_AddPhotoViaGallery value) addPhotoViaGallery,
    required TResult Function(_UploadPhoto value) uploadPhoto,
    required TResult Function(_SuccessUpload value) successUpload,
    required TResult Function(_DeletePhoto value) deletePhoto,
    required TResult Function(_SuccessDelete value) successDelete,
    required TResult Function(_PostPressed value) postPressed,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BioChanged value)? bioChanged,
    TResult Function(_AddPhotoViaCamera value)? addPhotoViaCamera,
    TResult Function(_AddPhotoViaGallery value)? addPhotoViaGallery,
    TResult Function(_UploadPhoto value)? uploadPhoto,
    TResult Function(_SuccessUpload value)? successUpload,
    TResult Function(_DeletePhoto value)? deletePhoto,
    TResult Function(_SuccessDelete value)? successDelete,
    TResult Function(_PostPressed value)? postPressed,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements UpdateProfileEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
class _$UpdateProfileStateTearOff {
  const _$UpdateProfileStateTearOff();

  _UpdateProfileState call(
      {required Option<Profile> profileOption,
      required bool isLoading,
      required Bio bio,
      required List<String> photos,
      required Option<Either<ProfileFailure, Unit>>
          updateProfileFailureOrSuccessOption,
      required Option<Either<ProfileFailure, String>>
          pickPhotoFailureOrSuccessOption,
      required Option<Either<ProfileFailure, String>>
          uploadPhotoFailureOrSuccessOption,
      required Option<Either<ProfileFailure, String>>
          deletePhotoFailureOrSuccessOption}) {
    return _UpdateProfileState(
      profileOption: profileOption,
      isLoading: isLoading,
      bio: bio,
      photos: photos,
      updateProfileFailureOrSuccessOption: updateProfileFailureOrSuccessOption,
      pickPhotoFailureOrSuccessOption: pickPhotoFailureOrSuccessOption,
      uploadPhotoFailureOrSuccessOption: uploadPhotoFailureOrSuccessOption,
      deletePhotoFailureOrSuccessOption: deletePhotoFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UpdateProfileState = _$UpdateProfileStateTearOff();

/// @nodoc
mixin _$UpdateProfileState {
  Option<Profile> get profileOption => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Bio get bio => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, Unit>>
      get updateProfileFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, String>> get pickPhotoFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, String>>
      get uploadPhotoFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<ProfileFailure, String>>
      get deletePhotoFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileStateCopyWith<UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Profile> profileOption,
      bool isLoading,
      Bio bio,
      List<String> photos,
      Option<Either<ProfileFailure, Unit>> updateProfileFailureOrSuccessOption,
      Option<Either<ProfileFailure, String>> pickPhotoFailureOrSuccessOption,
      Option<Either<ProfileFailure, String>> uploadPhotoFailureOrSuccessOption,
      Option<Either<ProfileFailure, String>>
          deletePhotoFailureOrSuccessOption});
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  final UpdateProfileState _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileState) _then;

  @override
  $Res call({
    Object? profileOption = freezed,
    Object? isLoading = freezed,
    Object? bio = freezed,
    Object? photos = freezed,
    Object? updateProfileFailureOrSuccessOption = freezed,
    Object? pickPhotoFailureOrSuccessOption = freezed,
    Object? uploadPhotoFailureOrSuccessOption = freezed,
    Object? deletePhotoFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      profileOption: profileOption == freezed
          ? _value.profileOption
          : profileOption // ignore: cast_nullable_to_non_nullable
              as Option<Profile>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Bio,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updateProfileFailureOrSuccessOption: updateProfileFailureOrSuccessOption ==
              freezed
          ? _value.updateProfileFailureOrSuccessOption
          : updateProfileFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      pickPhotoFailureOrSuccessOption: pickPhotoFailureOrSuccessOption ==
              freezed
          ? _value.pickPhotoFailureOrSuccessOption
          : pickPhotoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, String>>,
      uploadPhotoFailureOrSuccessOption: uploadPhotoFailureOrSuccessOption ==
              freezed
          ? _value.uploadPhotoFailureOrSuccessOption
          : uploadPhotoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, String>>,
      deletePhotoFailureOrSuccessOption: deletePhotoFailureOrSuccessOption ==
              freezed
          ? _value.deletePhotoFailureOrSuccessOption
          : deletePhotoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateProfileStateCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$UpdateProfileStateCopyWith(
          _UpdateProfileState value, $Res Function(_UpdateProfileState) then) =
      __$UpdateProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Profile> profileOption,
      bool isLoading,
      Bio bio,
      List<String> photos,
      Option<Either<ProfileFailure, Unit>> updateProfileFailureOrSuccessOption,
      Option<Either<ProfileFailure, String>> pickPhotoFailureOrSuccessOption,
      Option<Either<ProfileFailure, String>> uploadPhotoFailureOrSuccessOption,
      Option<Either<ProfileFailure, String>>
          deletePhotoFailureOrSuccessOption});
}

/// @nodoc
class __$UpdateProfileStateCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$UpdateProfileStateCopyWith<$Res> {
  __$UpdateProfileStateCopyWithImpl(
      _UpdateProfileState _value, $Res Function(_UpdateProfileState) _then)
      : super(_value, (v) => _then(v as _UpdateProfileState));

  @override
  _UpdateProfileState get _value => super._value as _UpdateProfileState;

  @override
  $Res call({
    Object? profileOption = freezed,
    Object? isLoading = freezed,
    Object? bio = freezed,
    Object? photos = freezed,
    Object? updateProfileFailureOrSuccessOption = freezed,
    Object? pickPhotoFailureOrSuccessOption = freezed,
    Object? uploadPhotoFailureOrSuccessOption = freezed,
    Object? deletePhotoFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateProfileState(
      profileOption: profileOption == freezed
          ? _value.profileOption
          : profileOption // ignore: cast_nullable_to_non_nullable
              as Option<Profile>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Bio,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updateProfileFailureOrSuccessOption: updateProfileFailureOrSuccessOption ==
              freezed
          ? _value.updateProfileFailureOrSuccessOption
          : updateProfileFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, Unit>>,
      pickPhotoFailureOrSuccessOption: pickPhotoFailureOrSuccessOption ==
              freezed
          ? _value.pickPhotoFailureOrSuccessOption
          : pickPhotoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, String>>,
      uploadPhotoFailureOrSuccessOption: uploadPhotoFailureOrSuccessOption ==
              freezed
          ? _value.uploadPhotoFailureOrSuccessOption
          : uploadPhotoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, String>>,
      deletePhotoFailureOrSuccessOption: deletePhotoFailureOrSuccessOption ==
              freezed
          ? _value.deletePhotoFailureOrSuccessOption
          : deletePhotoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_UpdateProfileState implements _UpdateProfileState {
  const _$_UpdateProfileState(
      {required this.profileOption,
      required this.isLoading,
      required this.bio,
      required this.photos,
      required this.updateProfileFailureOrSuccessOption,
      required this.pickPhotoFailureOrSuccessOption,
      required this.uploadPhotoFailureOrSuccessOption,
      required this.deletePhotoFailureOrSuccessOption});

  @override
  final Option<Profile> profileOption;
  @override
  final bool isLoading;
  @override
  final Bio bio;
  @override
  final List<String> photos;
  @override
  final Option<Either<ProfileFailure, Unit>>
      updateProfileFailureOrSuccessOption;
  @override
  final Option<Either<ProfileFailure, String>> pickPhotoFailureOrSuccessOption;
  @override
  final Option<Either<ProfileFailure, String>>
      uploadPhotoFailureOrSuccessOption;
  @override
  final Option<Either<ProfileFailure, String>>
      deletePhotoFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateProfileState(profileOption: $profileOption, isLoading: $isLoading, bio: $bio, photos: $photos, updateProfileFailureOrSuccessOption: $updateProfileFailureOrSuccessOption, pickPhotoFailureOrSuccessOption: $pickPhotoFailureOrSuccessOption, uploadPhotoFailureOrSuccessOption: $uploadPhotoFailureOrSuccessOption, deletePhotoFailureOrSuccessOption: $deletePhotoFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileState &&
            (identical(other.profileOption, profileOption) ||
                other.profileOption == profileOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.updateProfileFailureOrSuccessOption,
                    updateProfileFailureOrSuccessOption) ||
                other.updateProfileFailureOrSuccessOption ==
                    updateProfileFailureOrSuccessOption) &&
            (identical(other.pickPhotoFailureOrSuccessOption,
                    pickPhotoFailureOrSuccessOption) ||
                other.pickPhotoFailureOrSuccessOption ==
                    pickPhotoFailureOrSuccessOption) &&
            (identical(other.uploadPhotoFailureOrSuccessOption,
                    uploadPhotoFailureOrSuccessOption) ||
                other.uploadPhotoFailureOrSuccessOption ==
                    uploadPhotoFailureOrSuccessOption) &&
            (identical(other.deletePhotoFailureOrSuccessOption,
                    deletePhotoFailureOrSuccessOption) ||
                other.deletePhotoFailureOrSuccessOption ==
                    deletePhotoFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileOption,
      isLoading,
      bio,
      const DeepCollectionEquality().hash(photos),
      updateProfileFailureOrSuccessOption,
      pickPhotoFailureOrSuccessOption,
      uploadPhotoFailureOrSuccessOption,
      deletePhotoFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileStateCopyWith<_UpdateProfileState> get copyWith =>
      __$UpdateProfileStateCopyWithImpl<_UpdateProfileState>(this, _$identity);
}

abstract class _UpdateProfileState implements UpdateProfileState {
  const factory _UpdateProfileState(
      {required Option<Profile> profileOption,
      required bool isLoading,
      required Bio bio,
      required List<String> photos,
      required Option<Either<ProfileFailure, Unit>>
          updateProfileFailureOrSuccessOption,
      required Option<Either<ProfileFailure, String>>
          pickPhotoFailureOrSuccessOption,
      required Option<Either<ProfileFailure, String>>
          uploadPhotoFailureOrSuccessOption,
      required Option<Either<ProfileFailure, String>>
          deletePhotoFailureOrSuccessOption}) = _$_UpdateProfileState;

  @override
  Option<Profile> get profileOption;
  @override
  bool get isLoading;
  @override
  Bio get bio;
  @override
  List<String> get photos;
  @override
  Option<Either<ProfileFailure, Unit>> get updateProfileFailureOrSuccessOption;
  @override
  Option<Either<ProfileFailure, String>> get pickPhotoFailureOrSuccessOption;
  @override
  Option<Either<ProfileFailure, String>> get uploadPhotoFailureOrSuccessOption;
  @override
  Option<Either<ProfileFailure, String>> get deletePhotoFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UpdateProfileStateCopyWith<_UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
