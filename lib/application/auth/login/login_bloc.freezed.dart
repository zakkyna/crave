// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return _PhoneNumberChanged(
      phoneNumberStr,
    );
  }

  _OtpChanged otpChanged(String otpStr) {
    return _OtpChanged(
      otpStr,
    );
  }

  _SetVerificationId setVerificationId(String verificationId) {
    return _SetVerificationId(
      verificationId,
    );
  }

  _LoginWithPhoneNumberPressed loginWithPhoneNumberPressed() {
    return const _LoginWithPhoneNumberPressed();
  }

  _SignInWithApplePressed signInWithApplePressed() {
    return const _SignInWithApplePressed();
  }

  _OtpSubmitted otpSubmitted() {
    return const _OtpSubmitted();
  }

  _RemoveState removeState() {
    return const _RemoveState();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged
    with DiagnosticableTreeMixin
    implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumberStr);

  @override
  final String phoneNumberStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.phoneNumberChanged'))
      ..add(DiagnosticsProperty('phoneNumberStr', phoneNumberStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                other.phoneNumberStr == phoneNumberStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberStr);

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) {
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) {
    return phoneNumberChanged?.call(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements LoginEvent {
  const factory _PhoneNumberChanged(String phoneNumberStr) =
      _$_PhoneNumberChanged;

  String get phoneNumberStr;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OtpChangedCopyWith<$Res> {
  factory _$OtpChangedCopyWith(
          _OtpChanged value, $Res Function(_OtpChanged) then) =
      __$OtpChangedCopyWithImpl<$Res>;
  $Res call({String otpStr});
}

/// @nodoc
class __$OtpChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OtpChangedCopyWith<$Res> {
  __$OtpChangedCopyWithImpl(
      _OtpChanged _value, $Res Function(_OtpChanged) _then)
      : super(_value, (v) => _then(v as _OtpChanged));

  @override
  _OtpChanged get _value => super._value as _OtpChanged;

  @override
  $Res call({
    Object? otpStr = freezed,
  }) {
    return _then(_OtpChanged(
      otpStr == freezed
          ? _value.otpStr
          : otpStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpChanged with DiagnosticableTreeMixin implements _OtpChanged {
  const _$_OtpChanged(this.otpStr);

  @override
  final String otpStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.otpChanged(otpStr: $otpStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.otpChanged'))
      ..add(DiagnosticsProperty('otpStr', otpStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpChanged &&
            (identical(other.otpStr, otpStr) || other.otpStr == otpStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpStr);

  @JsonKey(ignore: true)
  @override
  _$OtpChangedCopyWith<_OtpChanged> get copyWith =>
      __$OtpChangedCopyWithImpl<_OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) {
    return otpChanged(otpStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) {
    return otpChanged?.call(otpStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otpStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements LoginEvent {
  const factory _OtpChanged(String otpStr) = _$_OtpChanged;

  String get otpStr;
  @JsonKey(ignore: true)
  _$OtpChangedCopyWith<_OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetVerificationIdCopyWith<$Res> {
  factory _$SetVerificationIdCopyWith(
          _SetVerificationId value, $Res Function(_SetVerificationId) then) =
      __$SetVerificationIdCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class __$SetVerificationIdCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$SetVerificationIdCopyWith<$Res> {
  __$SetVerificationIdCopyWithImpl(
      _SetVerificationId _value, $Res Function(_SetVerificationId) _then)
      : super(_value, (v) => _then(v as _SetVerificationId));

  @override
  _SetVerificationId get _value => super._value as _SetVerificationId;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(_SetVerificationId(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetVerificationId
    with DiagnosticableTreeMixin
    implements _SetVerificationId {
  const _$_SetVerificationId(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.setVerificationId(verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.setVerificationId'))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetVerificationId &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId);

  @JsonKey(ignore: true)
  @override
  _$SetVerificationIdCopyWith<_SetVerificationId> get copyWith =>
      __$SetVerificationIdCopyWithImpl<_SetVerificationId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) {
    return setVerificationId(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) {
    return setVerificationId?.call(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) {
    if (setVerificationId != null) {
      return setVerificationId(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) {
    return setVerificationId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) {
    return setVerificationId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) {
    if (setVerificationId != null) {
      return setVerificationId(this);
    }
    return orElse();
  }
}

abstract class _SetVerificationId implements LoginEvent {
  const factory _SetVerificationId(String verificationId) =
      _$_SetVerificationId;

  String get verificationId;
  @JsonKey(ignore: true)
  _$SetVerificationIdCopyWith<_SetVerificationId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginWithPhoneNumberPressedCopyWith<$Res> {
  factory _$LoginWithPhoneNumberPressedCopyWith(
          _LoginWithPhoneNumberPressed value,
          $Res Function(_LoginWithPhoneNumberPressed) then) =
      __$LoginWithPhoneNumberPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginWithPhoneNumberPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginWithPhoneNumberPressedCopyWith<$Res> {
  __$LoginWithPhoneNumberPressedCopyWithImpl(
      _LoginWithPhoneNumberPressed _value,
      $Res Function(_LoginWithPhoneNumberPressed) _then)
      : super(_value, (v) => _then(v as _LoginWithPhoneNumberPressed));

  @override
  _LoginWithPhoneNumberPressed get _value =>
      super._value as _LoginWithPhoneNumberPressed;
}

/// @nodoc

class _$_LoginWithPhoneNumberPressed
    with DiagnosticableTreeMixin
    implements _LoginWithPhoneNumberPressed {
  const _$_LoginWithPhoneNumberPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.loginWithPhoneNumberPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LoginEvent.loginWithPhoneNumberPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginWithPhoneNumberPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) {
    return loginWithPhoneNumberPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) {
    return loginWithPhoneNumberPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) {
    if (loginWithPhoneNumberPressed != null) {
      return loginWithPhoneNumberPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) {
    return loginWithPhoneNumberPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) {
    return loginWithPhoneNumberPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) {
    if (loginWithPhoneNumberPressed != null) {
      return loginWithPhoneNumberPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginWithPhoneNumberPressed implements LoginEvent {
  const factory _LoginWithPhoneNumberPressed() = _$_LoginWithPhoneNumberPressed;
}

/// @nodoc
abstract class _$SignInWithApplePressedCopyWith<$Res> {
  factory _$SignInWithApplePressedCopyWith(_SignInWithApplePressed value,
          $Res Function(_SignInWithApplePressed) then) =
      __$SignInWithApplePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithApplePressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$SignInWithApplePressedCopyWith<$Res> {
  __$SignInWithApplePressedCopyWithImpl(_SignInWithApplePressed _value,
      $Res Function(_SignInWithApplePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithApplePressed));

  @override
  _SignInWithApplePressed get _value => super._value as _SignInWithApplePressed;
}

/// @nodoc

class _$_SignInWithApplePressed
    with DiagnosticableTreeMixin
    implements _SignInWithApplePressed {
  const _$_SignInWithApplePressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.signInWithApplePressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.signInWithApplePressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) {
    return signInWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) {
    return signInWithApplePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) {
    if (signInWithApplePressed != null) {
      return signInWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) {
    return signInWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) {
    return signInWithApplePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) {
    if (signInWithApplePressed != null) {
      return signInWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithApplePressed implements LoginEvent {
  const factory _SignInWithApplePressed() = _$_SignInWithApplePressed;
}

/// @nodoc
abstract class _$OtpSubmittedCopyWith<$Res> {
  factory _$OtpSubmittedCopyWith(
          _OtpSubmitted value, $Res Function(_OtpSubmitted) then) =
      __$OtpSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OtpSubmittedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OtpSubmittedCopyWith<$Res> {
  __$OtpSubmittedCopyWithImpl(
      _OtpSubmitted _value, $Res Function(_OtpSubmitted) _then)
      : super(_value, (v) => _then(v as _OtpSubmitted));

  @override
  _OtpSubmitted get _value => super._value as _OtpSubmitted;
}

/// @nodoc

class _$_OtpSubmitted with DiagnosticableTreeMixin implements _OtpSubmitted {
  const _$_OtpSubmitted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.otpSubmitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginEvent.otpSubmitted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OtpSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) {
    return otpSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) {
    return otpSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) {
    return otpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) {
    return otpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmitted implements LoginEvent {
  const factory _OtpSubmitted() = _$_OtpSubmitted;
}

/// @nodoc
abstract class _$RemoveStateCopyWith<$Res> {
  factory _$RemoveStateCopyWith(
          _RemoveState value, $Res Function(_RemoveState) then) =
      __$RemoveStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoveStateCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$RemoveStateCopyWith<$Res> {
  __$RemoveStateCopyWithImpl(
      _RemoveState _value, $Res Function(_RemoveState) _then)
      : super(_value, (v) => _then(v as _RemoveState));

  @override
  _RemoveState get _value => super._value as _RemoveState;
}

/// @nodoc

class _$_RemoveState with DiagnosticableTreeMixin implements _RemoveState {
  const _$_RemoveState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.removeState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginEvent.removeState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function(String verificationId) setVerificationId,
    required TResult Function() loginWithPhoneNumberPressed,
    required TResult Function() signInWithApplePressed,
    required TResult Function() otpSubmitted,
    required TResult Function() removeState,
  }) {
    return removeState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
  }) {
    return removeState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function(String verificationId)? setVerificationId,
    TResult Function()? loginWithPhoneNumberPressed,
    TResult Function()? signInWithApplePressed,
    TResult Function()? otpSubmitted,
    TResult Function()? removeState,
    required TResult orElse(),
  }) {
    if (removeState != null) {
      return removeState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_SetVerificationId value) setVerificationId,
    required TResult Function(_LoginWithPhoneNumberPressed value)
        loginWithPhoneNumberPressed,
    required TResult Function(_SignInWithApplePressed value)
        signInWithApplePressed,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_RemoveState value) removeState,
  }) {
    return removeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
  }) {
    return removeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_SetVerificationId value)? setVerificationId,
    TResult Function(_LoginWithPhoneNumberPressed value)?
        loginWithPhoneNumberPressed,
    TResult Function(_SignInWithApplePressed value)? signInWithApplePressed,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_RemoveState value)? removeState,
    required TResult orElse(),
  }) {
    if (removeState != null) {
      return removeState(this);
    }
    return orElse();
  }
}

abstract class _RemoveState implements LoginEvent {
  const factory _RemoveState() = _$_RemoveState;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required PhoneNumber phoneNumber,
      required OtpCode otpCode,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, String>> verifyFailureOrSuccessOption,
      required Option<Either<AuthFailure, Profile>> otpFailureOrSuccessOption,
      required Option<Either<AuthFailure, Profile>>
          signInAppleFailureOrSuccessOption,
      required Option<String> verificationId}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      otpCode: otpCode,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      verifyFailureOrSuccessOption: verifyFailureOrSuccessOption,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption,
      signInAppleFailureOrSuccessOption: signInAppleFailureOrSuccessOption,
      verificationId: verificationId,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  OtpCode get otpCode => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, String>> get verifyFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Profile>> get otpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Profile>> get signInAppleFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<String> get verificationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {PhoneNumber phoneNumber,
      OtpCode otpCode,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, String>> verifyFailureOrSuccessOption,
      Option<Either<AuthFailure, Profile>> otpFailureOrSuccessOption,
      Option<Either<AuthFailure, Profile>> signInAppleFailureOrSuccessOption,
      Option<String> verificationId});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otpCode = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? verifyFailureOrSuccessOption = freezed,
    Object? otpFailureOrSuccessOption = freezed,
    Object? signInAppleFailureOrSuccessOption = freezed,
    Object? verificationId = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OtpCode,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyFailureOrSuccessOption: verifyFailureOrSuccessOption == freezed
          ? _value.verifyFailureOrSuccessOption
          : verifyFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Profile>>,
      signInAppleFailureOrSuccessOption: signInAppleFailureOrSuccessOption ==
              freezed
          ? _value.signInAppleFailureOrSuccessOption
          : signInAppleFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Profile>>,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhoneNumber phoneNumber,
      OtpCode otpCode,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, String>> verifyFailureOrSuccessOption,
      Option<Either<AuthFailure, Profile>> otpFailureOrSuccessOption,
      Option<Either<AuthFailure, Profile>> signInAppleFailureOrSuccessOption,
      Option<String> verificationId});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otpCode = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? verifyFailureOrSuccessOption = freezed,
    Object? otpFailureOrSuccessOption = freezed,
    Object? signInAppleFailureOrSuccessOption = freezed,
    Object? verificationId = freezed,
  }) {
    return _then(_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OtpCode,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyFailureOrSuccessOption: verifyFailureOrSuccessOption == freezed
          ? _value.verifyFailureOrSuccessOption
          : verifyFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Profile>>,
      signInAppleFailureOrSuccessOption: signInAppleFailureOrSuccessOption ==
              freezed
          ? _value.signInAppleFailureOrSuccessOption
          : signInAppleFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Profile>>,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_LoginState with DiagnosticableTreeMixin implements _LoginState {
  const _$_LoginState(
      {required this.phoneNumber,
      required this.otpCode,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.verifyFailureOrSuccessOption,
      required this.otpFailureOrSuccessOption,
      required this.signInAppleFailureOrSuccessOption,
      required this.verificationId});

  @override
  final PhoneNumber phoneNumber;
  @override
  final OtpCode otpCode;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, String>> verifyFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Profile>> otpFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Profile>> signInAppleFailureOrSuccessOption;
  @override
  final Option<String> verificationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(phoneNumber: $phoneNumber, otpCode: $otpCode, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, verifyFailureOrSuccessOption: $verifyFailureOrSuccessOption, otpFailureOrSuccessOption: $otpFailureOrSuccessOption, signInAppleFailureOrSuccessOption: $signInAppleFailureOrSuccessOption, verificationId: $verificationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('otpCode', otpCode))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'verifyFailureOrSuccessOption', verifyFailureOrSuccessOption))
      ..add(DiagnosticsProperty(
          'otpFailureOrSuccessOption', otpFailureOrSuccessOption))
      ..add(DiagnosticsProperty('signInAppleFailureOrSuccessOption',
          signInAppleFailureOrSuccessOption))
      ..add(DiagnosticsProperty('verificationId', verificationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.verifyFailureOrSuccessOption,
                    verifyFailureOrSuccessOption) ||
                other.verifyFailureOrSuccessOption ==
                    verifyFailureOrSuccessOption) &&
            (identical(other.otpFailureOrSuccessOption,
                    otpFailureOrSuccessOption) ||
                other.otpFailureOrSuccessOption == otpFailureOrSuccessOption) &&
            (identical(other.signInAppleFailureOrSuccessOption,
                    signInAppleFailureOrSuccessOption) ||
                other.signInAppleFailureOrSuccessOption ==
                    signInAppleFailureOrSuccessOption) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phoneNumber,
      otpCode,
      showErrorMessages,
      isSubmitting,
      verifyFailureOrSuccessOption,
      otpFailureOrSuccessOption,
      signInAppleFailureOrSuccessOption,
      verificationId);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required PhoneNumber phoneNumber,
      required OtpCode otpCode,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, String>> verifyFailureOrSuccessOption,
      required Option<Either<AuthFailure, Profile>> otpFailureOrSuccessOption,
      required Option<Either<AuthFailure, Profile>>
          signInAppleFailureOrSuccessOption,
      required Option<String> verificationId}) = _$_LoginState;

  @override
  PhoneNumber get phoneNumber;
  @override
  OtpCode get otpCode;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, String>> get verifyFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Profile>> get otpFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Profile>> get signInAppleFailureOrSuccessOption;
  @override
  Option<String> get verificationId;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
