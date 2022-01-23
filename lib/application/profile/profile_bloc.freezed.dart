// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _GetCurrentProfile getCurrentProfile() {
    return const _GetCurrentProfile();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentProfile value) getCurrentProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCurrentProfile value)? getCurrentProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentProfile value)? getCurrentProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$GetCurrentProfileCopyWith<$Res> {
  factory _$GetCurrentProfileCopyWith(
          _GetCurrentProfile value, $Res Function(_GetCurrentProfile) then) =
      __$GetCurrentProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCurrentProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$GetCurrentProfileCopyWith<$Res> {
  __$GetCurrentProfileCopyWithImpl(
      _GetCurrentProfile _value, $Res Function(_GetCurrentProfile) _then)
      : super(_value, (v) => _then(v as _GetCurrentProfile));

  @override
  _GetCurrentProfile get _value => super._value as _GetCurrentProfile;
}

/// @nodoc

class _$_GetCurrentProfile implements _GetCurrentProfile {
  const _$_GetCurrentProfile();

  @override
  String toString() {
    return 'ProfileEvent.getCurrentProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetCurrentProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentProfile,
  }) {
    return getCurrentProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentProfile,
  }) {
    return getCurrentProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentProfile,
    required TResult orElse(),
  }) {
    if (getCurrentProfile != null) {
      return getCurrentProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentProfile value) getCurrentProfile,
  }) {
    return getCurrentProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCurrentProfile value)? getCurrentProfile,
  }) {
    return getCurrentProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentProfile value)? getCurrentProfile,
    required TResult orElse(),
  }) {
    if (getCurrentProfile != null) {
      return getCurrentProfile(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentProfile implements ProfileEvent {
  const factory _GetCurrentProfile() = _$_GetCurrentProfile;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required bool isLoading,
      required Option<Profile> currentProfileOption,
      required bool isCompleted,
      required Option<ProfileFailure> failureOption}) {
    return _ProfileState(
      isLoading: isLoading,
      currentProfileOption: currentProfileOption,
      isCompleted: isCompleted,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Profile> get currentProfileOption =>
      throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  Option<ProfileFailure> get failureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Profile> currentProfileOption,
      bool isCompleted,
      Option<ProfileFailure> failureOption});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentProfileOption = freezed,
    Object? isCompleted = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProfileOption: currentProfileOption == freezed
          ? _value.currentProfileOption
          : currentProfileOption // ignore: cast_nullable_to_non_nullable
              as Option<Profile>,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProfileFailure>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Profile> currentProfileOption,
      bool isCompleted,
      Option<ProfileFailure> failureOption});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentProfileOption = freezed,
    Object? isCompleted = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_ProfileState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentProfileOption: currentProfileOption == freezed
          ? _value.currentProfileOption
          : currentProfileOption // ignore: cast_nullable_to_non_nullable
              as Option<Profile>,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProfileFailure>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.isLoading,
      required this.currentProfileOption,
      required this.isCompleted,
      required this.failureOption});

  @override
  final bool isLoading;
  @override
  final Option<Profile> currentProfileOption;
  @override
  final bool isCompleted;
  @override
  final Option<ProfileFailure> failureOption;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, currentProfileOption: $currentProfileOption, isCompleted: $isCompleted, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentProfileOption, currentProfileOption) ||
                other.currentProfileOption == currentProfileOption) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, currentProfileOption, isCompleted, failureOption);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required bool isLoading,
      required Option<Profile> currentProfileOption,
      required bool isCompleted,
      required Option<ProfileFailure> failureOption}) = _$_ProfileState;

  @override
  bool get isLoading;
  @override
  Option<Profile> get currentProfileOption;
  @override
  bool get isCompleted;
  @override
  Option<ProfileFailure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
