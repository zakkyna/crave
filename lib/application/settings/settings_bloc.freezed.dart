// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  _LoadData loadData() {
    return const _LoadData();
  }

  _SaveSeeking saveSeeking(List<int> seeking) {
    return _SaveSeeking(
      seeking,
    );
  }

  _SaveNotification saveNotification(
      {required bool pushNotification,
      required bool chatTimerNotification,
      required bool likeNotification,
      required bool newMessageAlert}) {
    return _SaveNotification(
      pushNotification: pushNotification,
      chatTimerNotification: chatTimerNotification,
      likeNotification: likeNotification,
      newMessageAlert: newMessageAlert,
    );
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<int> seeking) saveSeeking,
    required TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)
        saveNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SaveSeeking value) saveSeeking,
    required TResult Function(_SaveNotification value) saveNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$LoadDataCopyWith<$Res> {
  __$LoadDataCopyWithImpl(_LoadData _value, $Res Function(_LoadData) _then)
      : super(_value, (v) => _then(v as _LoadData));

  @override
  _LoadData get _value => super._value as _LoadData;
}

/// @nodoc

class _$_LoadData implements _LoadData {
  const _$_LoadData();

  @override
  String toString() {
    return 'SettingsEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<int> seeking) saveSeeking,
    required TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)
        saveNotification,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SaveSeeking value) saveSeeking,
    required TResult Function(_SaveNotification value) saveNotification,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements SettingsEvent {
  const factory _LoadData() = _$_LoadData;
}

/// @nodoc
abstract class _$SaveSeekingCopyWith<$Res> {
  factory _$SaveSeekingCopyWith(
          _SaveSeeking value, $Res Function(_SaveSeeking) then) =
      __$SaveSeekingCopyWithImpl<$Res>;
  $Res call({List<int> seeking});
}

/// @nodoc
class __$SaveSeekingCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$SaveSeekingCopyWith<$Res> {
  __$SaveSeekingCopyWithImpl(
      _SaveSeeking _value, $Res Function(_SaveSeeking) _then)
      : super(_value, (v) => _then(v as _SaveSeeking));

  @override
  _SaveSeeking get _value => super._value as _SaveSeeking;

  @override
  $Res call({
    Object? seeking = freezed,
  }) {
    return _then(_SaveSeeking(
      seeking == freezed
          ? _value.seeking
          : seeking // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_SaveSeeking implements _SaveSeeking {
  const _$_SaveSeeking(this.seeking);

  @override
  final List<int> seeking;

  @override
  String toString() {
    return 'SettingsEvent.saveSeeking(seeking: $seeking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveSeeking &&
            const DeepCollectionEquality().equals(other.seeking, seeking));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(seeking));

  @JsonKey(ignore: true)
  @override
  _$SaveSeekingCopyWith<_SaveSeeking> get copyWith =>
      __$SaveSeekingCopyWithImpl<_SaveSeeking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<int> seeking) saveSeeking,
    required TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)
        saveNotification,
  }) {
    return saveSeeking(seeking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
  }) {
    return saveSeeking?.call(seeking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
    required TResult orElse(),
  }) {
    if (saveSeeking != null) {
      return saveSeeking(seeking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SaveSeeking value) saveSeeking,
    required TResult Function(_SaveNotification value) saveNotification,
  }) {
    return saveSeeking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
  }) {
    return saveSeeking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
    required TResult orElse(),
  }) {
    if (saveSeeking != null) {
      return saveSeeking(this);
    }
    return orElse();
  }
}

abstract class _SaveSeeking implements SettingsEvent {
  const factory _SaveSeeking(List<int> seeking) = _$_SaveSeeking;

  List<int> get seeking;
  @JsonKey(ignore: true)
  _$SaveSeekingCopyWith<_SaveSeeking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveNotificationCopyWith<$Res> {
  factory _$SaveNotificationCopyWith(
          _SaveNotification value, $Res Function(_SaveNotification) then) =
      __$SaveNotificationCopyWithImpl<$Res>;
  $Res call(
      {bool pushNotification,
      bool chatTimerNotification,
      bool likeNotification,
      bool newMessageAlert});
}

/// @nodoc
class __$SaveNotificationCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$SaveNotificationCopyWith<$Res> {
  __$SaveNotificationCopyWithImpl(
      _SaveNotification _value, $Res Function(_SaveNotification) _then)
      : super(_value, (v) => _then(v as _SaveNotification));

  @override
  _SaveNotification get _value => super._value as _SaveNotification;

  @override
  $Res call({
    Object? pushNotification = freezed,
    Object? chatTimerNotification = freezed,
    Object? likeNotification = freezed,
    Object? newMessageAlert = freezed,
  }) {
    return _then(_SaveNotification(
      pushNotification: pushNotification == freezed
          ? _value.pushNotification
          : pushNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      chatTimerNotification: chatTimerNotification == freezed
          ? _value.chatTimerNotification
          : chatTimerNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      likeNotification: likeNotification == freezed
          ? _value.likeNotification
          : likeNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      newMessageAlert: newMessageAlert == freezed
          ? _value.newMessageAlert
          : newMessageAlert // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SaveNotification implements _SaveNotification {
  const _$_SaveNotification(
      {required this.pushNotification,
      required this.chatTimerNotification,
      required this.likeNotification,
      required this.newMessageAlert});

  @override
  final bool pushNotification;
  @override
  final bool chatTimerNotification;
  @override
  final bool likeNotification;
  @override
  final bool newMessageAlert;

  @override
  String toString() {
    return 'SettingsEvent.saveNotification(pushNotification: $pushNotification, chatTimerNotification: $chatTimerNotification, likeNotification: $likeNotification, newMessageAlert: $newMessageAlert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveNotification &&
            (identical(other.pushNotification, pushNotification) ||
                other.pushNotification == pushNotification) &&
            (identical(other.chatTimerNotification, chatTimerNotification) ||
                other.chatTimerNotification == chatTimerNotification) &&
            (identical(other.likeNotification, likeNotification) ||
                other.likeNotification == likeNotification) &&
            (identical(other.newMessageAlert, newMessageAlert) ||
                other.newMessageAlert == newMessageAlert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pushNotification,
      chatTimerNotification, likeNotification, newMessageAlert);

  @JsonKey(ignore: true)
  @override
  _$SaveNotificationCopyWith<_SaveNotification> get copyWith =>
      __$SaveNotificationCopyWithImpl<_SaveNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<int> seeking) saveSeeking,
    required TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)
        saveNotification,
  }) {
    return saveNotification(pushNotification, chatTimerNotification,
        likeNotification, newMessageAlert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
  }) {
    return saveNotification?.call(pushNotification, chatTimerNotification,
        likeNotification, newMessageAlert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<int> seeking)? saveSeeking,
    TResult Function(bool pushNotification, bool chatTimerNotification,
            bool likeNotification, bool newMessageAlert)?
        saveNotification,
    required TResult orElse(),
  }) {
    if (saveNotification != null) {
      return saveNotification(pushNotification, chatTimerNotification,
          likeNotification, newMessageAlert);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_SaveSeeking value) saveSeeking,
    required TResult Function(_SaveNotification value) saveNotification,
  }) {
    return saveNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
  }) {
    return saveNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_SaveSeeking value)? saveSeeking,
    TResult Function(_SaveNotification value)? saveNotification,
    required TResult orElse(),
  }) {
    if (saveNotification != null) {
      return saveNotification(this);
    }
    return orElse();
  }
}

abstract class _SaveNotification implements SettingsEvent {
  const factory _SaveNotification(
      {required bool pushNotification,
      required bool chatTimerNotification,
      required bool likeNotification,
      required bool newMessageAlert}) = _$_SaveNotification;

  bool get pushNotification;
  bool get chatTimerNotification;
  bool get likeNotification;
  bool get newMessageAlert;
  @JsonKey(ignore: true)
  _$SaveNotificationCopyWith<_SaveNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoadSuccess loadSuccess(SettingData settingData) {
    return _LoadSuccess(
      settingData,
    );
  }

  _LoadFailure loadFailure(SettingFailure failure) {
    return _LoadFailure(
      failure,
    );
  }

  _UpdateSuccess updateSuccess(SettingData settingData) {
    return _UpdateSuccess(
      settingData,
    );
  }

  _UpdateFailure updateFailure(SettingFailure failure) {
    return _UpdateFailure(
      failure,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingData settingData) loadSuccess,
    required TResult Function(SettingFailure failure) loadFailure,
    required TResult Function(SettingData settingData) updateSuccess,
    required TResult Function(SettingFailure failure) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SettingsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(SettingData settingData) loadSuccess,
    required TResult Function(SettingFailure failure) loadFailure,
    required TResult Function(SettingData settingData) updateSuccess,
    required TResult Function(SettingFailure failure) updateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SettingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingData settingData) loadSuccess,
    required TResult Function(SettingFailure failure) loadFailure,
    required TResult Function(SettingData settingData) updateSuccess,
    required TResult Function(SettingFailure failure) updateFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SettingsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({SettingData settingData});

  $SettingDataCopyWith<$Res> get settingData;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? settingData = freezed,
  }) {
    return _then(_LoadSuccess(
      settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingData,
    ));
  }

  @override
  $SettingDataCopyWith<$Res> get settingData {
    return $SettingDataCopyWith<$Res>(_value.settingData, (value) {
      return _then(_value.copyWith(settingData: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.settingData);

  @override
  final SettingData settingData;

  @override
  String toString() {
    return 'SettingsState.loadSuccess(settingData: $settingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.settingData, settingData) ||
                other.settingData == settingData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settingData);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingData settingData) loadSuccess,
    required TResult Function(SettingFailure failure) loadFailure,
    required TResult Function(SettingData settingData) updateSuccess,
    required TResult Function(SettingFailure failure) updateFailure,
  }) {
    return loadSuccess(settingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
  }) {
    return loadSuccess?.call(settingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(settingData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements SettingsState {
  const factory _LoadSuccess(SettingData settingData) = _$_LoadSuccess;

  SettingData get settingData;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({SettingFailure failure});

  $SettingFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SettingFailure,
    ));
  }

  @override
  $SettingFailureCopyWith<$Res> get failure {
    return $SettingFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final SettingFailure failure;

  @override
  String toString() {
    return 'SettingsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingData settingData) loadSuccess,
    required TResult Function(SettingFailure failure) loadFailure,
    required TResult Function(SettingData settingData) updateSuccess,
    required TResult Function(SettingFailure failure) updateFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SettingsState {
  const factory _LoadFailure(SettingFailure failure) = _$_LoadFailure;

  SettingFailure get failure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateSuccessCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) then) =
      __$UpdateSuccessCopyWithImpl<$Res>;
  $Res call({SettingData settingData});

  $SettingDataCopyWith<$Res> get settingData;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(
      _UpdateSuccess _value, $Res Function(_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSuccess));

  @override
  _UpdateSuccess get _value => super._value as _UpdateSuccess;

  @override
  $Res call({
    Object? settingData = freezed,
  }) {
    return _then(_UpdateSuccess(
      settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingData,
    ));
  }

  @override
  $SettingDataCopyWith<$Res> get settingData {
    return $SettingDataCopyWith<$Res>(_value.settingData, (value) {
      return _then(_value.copyWith(settingData: value));
    });
  }
}

/// @nodoc

class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess(this.settingData);

  @override
  final SettingData settingData;

  @override
  String toString() {
    return 'SettingsState.updateSuccess(settingData: $settingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSuccess &&
            (identical(other.settingData, settingData) ||
                other.settingData == settingData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settingData);

  @JsonKey(ignore: true)
  @override
  _$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith =>
      __$UpdateSuccessCopyWithImpl<_UpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingData settingData) loadSuccess,
    required TResult Function(SettingFailure failure) loadFailure,
    required TResult Function(SettingData settingData) updateSuccess,
    required TResult Function(SettingFailure failure) updateFailure,
  }) {
    return updateSuccess(settingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
  }) {
    return updateSuccess?.call(settingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(settingData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements SettingsState {
  const factory _UpdateSuccess(SettingData settingData) = _$_UpdateSuccess;

  SettingData get settingData;
  @JsonKey(ignore: true)
  _$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateFailureCopyWith<$Res> {
  factory _$UpdateFailureCopyWith(
          _UpdateFailure value, $Res Function(_UpdateFailure) then) =
      __$UpdateFailureCopyWithImpl<$Res>;
  $Res call({SettingFailure failure});

  $SettingFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UpdateFailureCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$UpdateFailureCopyWith<$Res> {
  __$UpdateFailureCopyWithImpl(
      _UpdateFailure _value, $Res Function(_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _UpdateFailure));

  @override
  _UpdateFailure get _value => super._value as _UpdateFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UpdateFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SettingFailure,
    ));
  }

  @override
  $SettingFailureCopyWith<$Res> get failure {
    return $SettingFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(this.failure);

  @override
  final SettingFailure failure;

  @override
  String toString() {
    return 'SettingsState.updateFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      __$UpdateFailureCopyWithImpl<_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SettingData settingData) loadSuccess,
    required TResult Function(SettingFailure failure) loadFailure,
    required TResult Function(SettingData settingData) updateSuccess,
    required TResult Function(SettingFailure failure) updateFailure,
  }) {
    return updateFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
  }) {
    return updateFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SettingData settingData)? loadSuccess,
    TResult Function(SettingFailure failure)? loadFailure,
    TResult Function(SettingData settingData)? updateSuccess,
    TResult Function(SettingFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements SettingsState {
  const factory _UpdateFailure(SettingFailure failure) = _$_UpdateFailure;

  SettingFailure get failure;
  @JsonKey(ignore: true)
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
