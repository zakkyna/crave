// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call(
      {required String uid,
      required bool isPublished,
      required bool isNewUser,
      @JsonKey(includeIfNull: true, defaultValue: '')
          required String? phoneNumber,
      String? bio,
      String? city,
      String? state,
      String? address,
      bool? isEnableInstantChat,
      int? genderId,
      String? profilePicture,
      List<String>? photos,
      bool? isOnline,
      @TimeStampConverter()
          Timestamp? lastSeen,
      ProfileLocation? location,
      SettingData? settingData}) {
    return _Profile(
      uid: uid,
      isPublished: isPublished,
      isNewUser: isNewUser,
      phoneNumber: phoneNumber,
      bio: bio,
      city: city,
      state: state,
      address: address,
      isEnableInstantChat: isEnableInstantChat,
      genderId: genderId,
      profilePicture: profilePicture,
      photos: photos,
      isOnline: isOnline,
      lastSeen: lastSeen,
      location: location,
      settingData: settingData,
    );
  }

  Profile fromJson(Map<String, Object?> json) {
    return Profile.fromJson(json);
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String get uid => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;
  bool get isNewUser => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: true, defaultValue: '')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool? get isEnableInstantChat => throw _privateConstructorUsedError;
  int? get genderId => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;
  @TimeStampConverter()
  Timestamp? get lastSeen => throw _privateConstructorUsedError;
  ProfileLocation? get location => throw _privateConstructorUsedError;
  SettingData? get settingData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      bool isPublished,
      bool isNewUser,
      @JsonKey(includeIfNull: true, defaultValue: '') String? phoneNumber,
      String? bio,
      String? city,
      String? state,
      String? address,
      bool? isEnableInstantChat,
      int? genderId,
      String? profilePicture,
      List<String>? photos,
      bool? isOnline,
      @TimeStampConverter() Timestamp? lastSeen,
      ProfileLocation? location,
      SettingData? settingData});

  $ProfileLocationCopyWith<$Res>? get location;
  $SettingDataCopyWith<$Res>? get settingData;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? isPublished = freezed,
    Object? isNewUser = freezed,
    Object? phoneNumber = freezed,
    Object? bio = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? address = freezed,
    Object? isEnableInstantChat = freezed,
    Object? genderId = freezed,
    Object? profilePicture = freezed,
    Object? photos = freezed,
    Object? isOnline = freezed,
    Object? lastSeen = freezed,
    Object? location = freezed,
    Object? settingData = freezed,
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
      isNewUser: isNewUser == freezed
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnableInstantChat: isEnableInstantChat == freezed
          ? _value.isEnableInstantChat
          : isEnableInstantChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      genderId: genderId == freezed
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ProfileLocation?,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingData?,
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

  @override
  $SettingDataCopyWith<$Res>? get settingData {
    if (_value.settingData == null) {
      return null;
    }

    return $SettingDataCopyWith<$Res>(_value.settingData!, (value) {
      return _then(_value.copyWith(settingData: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      bool isPublished,
      bool isNewUser,
      @JsonKey(includeIfNull: true, defaultValue: '') String? phoneNumber,
      String? bio,
      String? city,
      String? state,
      String? address,
      bool? isEnableInstantChat,
      int? genderId,
      String? profilePicture,
      List<String>? photos,
      bool? isOnline,
      @TimeStampConverter() Timestamp? lastSeen,
      ProfileLocation? location,
      SettingData? settingData});

  @override
  $ProfileLocationCopyWith<$Res>? get location;
  @override
  $SettingDataCopyWith<$Res>? get settingData;
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object? uid = freezed,
    Object? isPublished = freezed,
    Object? isNewUser = freezed,
    Object? phoneNumber = freezed,
    Object? bio = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? address = freezed,
    Object? isEnableInstantChat = freezed,
    Object? genderId = freezed,
    Object? profilePicture = freezed,
    Object? photos = freezed,
    Object? isOnline = freezed,
    Object? lastSeen = freezed,
    Object? location = freezed,
    Object? settingData = freezed,
  }) {
    return _then(_Profile(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: isPublished == freezed
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewUser: isNewUser == freezed
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnableInstantChat: isEnableInstantChat == freezed
          ? _value.isEnableInstantChat
          : isEnableInstantChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      genderId: genderId == freezed
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ProfileLocation?,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as SettingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  const _$_Profile(
      {required this.uid,
      required this.isPublished,
      required this.isNewUser,
      @JsonKey(includeIfNull: true, defaultValue: '') required this.phoneNumber,
      this.bio,
      this.city,
      this.state,
      this.address,
      this.isEnableInstantChat,
      this.genderId,
      this.profilePicture,
      this.photos,
      this.isOnline,
      @TimeStampConverter() this.lastSeen,
      this.location,
      this.settingData});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String uid;
  @override
  final bool isPublished;
  @override
  final bool isNewUser;
  @override
  @JsonKey(includeIfNull: true, defaultValue: '')
  final String? phoneNumber;
  @override
  final String? bio;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? address;
  @override
  final bool? isEnableInstantChat;
  @override
  final int? genderId;
  @override
  final String? profilePicture;
  @override
  final List<String>? photos;
  @override
  final bool? isOnline;
  @override
  @TimeStampConverter()
  final Timestamp? lastSeen;
  @override
  final ProfileLocation? location;
  @override
  final SettingData? settingData;

  @override
  String toString() {
    return 'Profile(uid: $uid, isPublished: $isPublished, isNewUser: $isNewUser, phoneNumber: $phoneNumber, bio: $bio, city: $city, state: $state, address: $address, isEnableInstantChat: $isEnableInstantChat, genderId: $genderId, profilePicture: $profilePicture, photos: $photos, isOnline: $isOnline, lastSeen: $lastSeen, location: $location, settingData: $settingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profile &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isEnableInstantChat, isEnableInstantChat) ||
                other.isEnableInstantChat == isEnableInstantChat) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.settingData, settingData) ||
                other.settingData == settingData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      isPublished,
      isNewUser,
      phoneNumber,
      bio,
      city,
      state,
      address,
      isEnableInstantChat,
      genderId,
      profilePicture,
      const DeepCollectionEquality().hash(photos),
      isOnline,
      lastSeen,
      location,
      settingData);

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {required String uid,
      required bool isPublished,
      required bool isNewUser,
      @JsonKey(includeIfNull: true, defaultValue: '')
          required String? phoneNumber,
      String? bio,
      String? city,
      String? state,
      String? address,
      bool? isEnableInstantChat,
      int? genderId,
      String? profilePicture,
      List<String>? photos,
      bool? isOnline,
      @TimeStampConverter()
          Timestamp? lastSeen,
      ProfileLocation? location,
      SettingData? settingData}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get uid;
  @override
  bool get isPublished;
  @override
  bool get isNewUser;
  @override
  @JsonKey(includeIfNull: true, defaultValue: '')
  String? get phoneNumber;
  @override
  String? get bio;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get address;
  @override
  bool? get isEnableInstantChat;
  @override
  int? get genderId;
  @override
  String? get profilePicture;
  @override
  List<String>? get photos;
  @override
  bool? get isOnline;
  @override
  @TimeStampConverter()
  Timestamp? get lastSeen;
  @override
  ProfileLocation? get location;
  @override
  SettingData? get settingData;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
