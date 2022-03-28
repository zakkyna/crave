// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingData _$SettingDataFromJson(Map<String, dynamic> json) {
  return _SettingData.fromJson(json);
}

/// @nodoc
class _$SettingDataTearOff {
  const _$SettingDataTearOff();

  _SettingData call(
      {required List<int> seeking,
      required bool pushNotification,
      required bool newMessageAlert,
      required bool likeNotification,
      required bool chatTimerNotification}) {
    return _SettingData(
      seeking: seeking,
      pushNotification: pushNotification,
      newMessageAlert: newMessageAlert,
      likeNotification: likeNotification,
      chatTimerNotification: chatTimerNotification,
    );
  }

  SettingData fromJson(Map<String, Object?> json) {
    return SettingData.fromJson(json);
  }
}

/// @nodoc
const $SettingData = _$SettingDataTearOff();

/// @nodoc
mixin _$SettingData {
  List<int> get seeking => throw _privateConstructorUsedError;
  bool get pushNotification => throw _privateConstructorUsedError;
  bool get newMessageAlert => throw _privateConstructorUsedError;
  bool get likeNotification => throw _privateConstructorUsedError;
  bool get chatTimerNotification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingDataCopyWith<SettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingDataCopyWith<$Res> {
  factory $SettingDataCopyWith(
          SettingData value, $Res Function(SettingData) then) =
      _$SettingDataCopyWithImpl<$Res>;
  $Res call(
      {List<int> seeking,
      bool pushNotification,
      bool newMessageAlert,
      bool likeNotification,
      bool chatTimerNotification});
}

/// @nodoc
class _$SettingDataCopyWithImpl<$Res> implements $SettingDataCopyWith<$Res> {
  _$SettingDataCopyWithImpl(this._value, this._then);

  final SettingData _value;
  // ignore: unused_field
  final $Res Function(SettingData) _then;

  @override
  $Res call({
    Object? seeking = freezed,
    Object? pushNotification = freezed,
    Object? newMessageAlert = freezed,
    Object? likeNotification = freezed,
    Object? chatTimerNotification = freezed,
  }) {
    return _then(_value.copyWith(
      seeking: seeking == freezed
          ? _value.seeking
          : seeking // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pushNotification: pushNotification == freezed
          ? _value.pushNotification
          : pushNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      newMessageAlert: newMessageAlert == freezed
          ? _value.newMessageAlert
          : newMessageAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      likeNotification: likeNotification == freezed
          ? _value.likeNotification
          : likeNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      chatTimerNotification: chatTimerNotification == freezed
          ? _value.chatTimerNotification
          : chatTimerNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingDataCopyWith<$Res>
    implements $SettingDataCopyWith<$Res> {
  factory _$SettingDataCopyWith(
          _SettingData value, $Res Function(_SettingData) then) =
      __$SettingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<int> seeking,
      bool pushNotification,
      bool newMessageAlert,
      bool likeNotification,
      bool chatTimerNotification});
}

/// @nodoc
class __$SettingDataCopyWithImpl<$Res> extends _$SettingDataCopyWithImpl<$Res>
    implements _$SettingDataCopyWith<$Res> {
  __$SettingDataCopyWithImpl(
      _SettingData _value, $Res Function(_SettingData) _then)
      : super(_value, (v) => _then(v as _SettingData));

  @override
  _SettingData get _value => super._value as _SettingData;

  @override
  $Res call({
    Object? seeking = freezed,
    Object? pushNotification = freezed,
    Object? newMessageAlert = freezed,
    Object? likeNotification = freezed,
    Object? chatTimerNotification = freezed,
  }) {
    return _then(_SettingData(
      seeking: seeking == freezed
          ? _value.seeking
          : seeking // ignore: cast_nullable_to_non_nullable
              as List<int>,
      pushNotification: pushNotification == freezed
          ? _value.pushNotification
          : pushNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      newMessageAlert: newMessageAlert == freezed
          ? _value.newMessageAlert
          : newMessageAlert // ignore: cast_nullable_to_non_nullable
              as bool,
      likeNotification: likeNotification == freezed
          ? _value.likeNotification
          : likeNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      chatTimerNotification: chatTimerNotification == freezed
          ? _value.chatTimerNotification
          : chatTimerNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingData implements _SettingData {
  const _$_SettingData(
      {required this.seeking,
      required this.pushNotification,
      required this.newMessageAlert,
      required this.likeNotification,
      required this.chatTimerNotification});

  factory _$_SettingData.fromJson(Map<String, dynamic> json) =>
      _$$_SettingDataFromJson(json);

  @override
  final List<int> seeking;
  @override
  final bool pushNotification;
  @override
  final bool newMessageAlert;
  @override
  final bool likeNotification;
  @override
  final bool chatTimerNotification;

  @override
  String toString() {
    return 'SettingData(seeking: $seeking, pushNotification: $pushNotification, newMessageAlert: $newMessageAlert, likeNotification: $likeNotification, chatTimerNotification: $chatTimerNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingData &&
            const DeepCollectionEquality().equals(other.seeking, seeking) &&
            (identical(other.pushNotification, pushNotification) ||
                other.pushNotification == pushNotification) &&
            (identical(other.newMessageAlert, newMessageAlert) ||
                other.newMessageAlert == newMessageAlert) &&
            (identical(other.likeNotification, likeNotification) ||
                other.likeNotification == likeNotification) &&
            (identical(other.chatTimerNotification, chatTimerNotification) ||
                other.chatTimerNotification == chatTimerNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seeking),
      pushNotification,
      newMessageAlert,
      likeNotification,
      chatTimerNotification);

  @JsonKey(ignore: true)
  @override
  _$SettingDataCopyWith<_SettingData> get copyWith =>
      __$SettingDataCopyWithImpl<_SettingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingDataToJson(this);
  }
}

abstract class _SettingData implements SettingData {
  const factory _SettingData(
      {required List<int> seeking,
      required bool pushNotification,
      required bool newMessageAlert,
      required bool likeNotification,
      required bool chatTimerNotification}) = _$_SettingData;

  factory _SettingData.fromJson(Map<String, dynamic> json) =
      _$_SettingData.fromJson;

  @override
  List<int> get seeking;
  @override
  bool get pushNotification;
  @override
  bool get newMessageAlert;
  @override
  bool get likeNotification;
  @override
  bool get chatTimerNotification;
  @override
  @JsonKey(ignore: true)
  _$SettingDataCopyWith<_SettingData> get copyWith =>
      throw _privateConstructorUsedError;
}
