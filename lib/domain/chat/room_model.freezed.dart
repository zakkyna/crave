// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
class _$RoomModelTearOff {
  const _$RoomModelTearOff();

  _RoomModel call(
      {required String id,
      required bool? isInstantChat,
      @TimeStampConverter() required Timestamp createdAt,
      @TimeStampConverter() required Timestamp updatedAt,
      @TimeStampNullConverter() Timestamp? lastChatAt,
      required List<Profile> members,
      required List<String> memberIds,
      @ChatModelConverter() ChatModel? lastChat}) {
    return _RoomModel(
      id: id,
      isInstantChat: isInstantChat,
      createdAt: createdAt,
      updatedAt: updatedAt,
      lastChatAt: lastChatAt,
      members: members,
      memberIds: memberIds,
      lastChat: lastChat,
    );
  }

  RoomModel fromJson(Map<String, Object?> json) {
    return RoomModel.fromJson(json);
  }
}

/// @nodoc
const $RoomModel = _$RoomModelTearOff();

/// @nodoc
mixin _$RoomModel {
  String get id => throw _privateConstructorUsedError;
  bool? get isInstantChat => throw _privateConstructorUsedError;
  @TimeStampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @TimeStampConverter()
  Timestamp get updatedAt => throw _privateConstructorUsedError;
  @TimeStampNullConverter()
  Timestamp? get lastChatAt => throw _privateConstructorUsedError;
  List<Profile> get members => throw _privateConstructorUsedError;
  List<String> get memberIds => throw _privateConstructorUsedError;
  @ChatModelConverter()
  ChatModel? get lastChat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool? isInstantChat,
      @TimeStampConverter() Timestamp createdAt,
      @TimeStampConverter() Timestamp updatedAt,
      @TimeStampNullConverter() Timestamp? lastChatAt,
      List<Profile> members,
      List<String> memberIds,
      @ChatModelConverter() ChatModel? lastChat});

  $ChatModelCopyWith<$Res>? get lastChat;
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res> implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  final RoomModel _value;
  // ignore: unused_field
  final $Res Function(RoomModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isInstantChat = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastChatAt = freezed,
    Object? members = freezed,
    Object? memberIds = freezed,
    Object? lastChat = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isInstantChat: isInstantChat == freezed
          ? _value.isInstantChat
          : isInstantChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      lastChatAt: lastChatAt == freezed
          ? _value.lastChatAt
          : lastChatAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      memberIds: memberIds == freezed
          ? _value.memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastChat: lastChat == freezed
          ? _value.lastChat
          : lastChat // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
    ));
  }

  @override
  $ChatModelCopyWith<$Res>? get lastChat {
    if (_value.lastChat == null) {
      return null;
    }

    return $ChatModelCopyWith<$Res>(_value.lastChat!, (value) {
      return _then(_value.copyWith(lastChat: value));
    });
  }
}

/// @nodoc
abstract class _$RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$RoomModelCopyWith(
          _RoomModel value, $Res Function(_RoomModel) then) =
      __$RoomModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool? isInstantChat,
      @TimeStampConverter() Timestamp createdAt,
      @TimeStampConverter() Timestamp updatedAt,
      @TimeStampNullConverter() Timestamp? lastChatAt,
      List<Profile> members,
      List<String> memberIds,
      @ChatModelConverter() ChatModel? lastChat});

  @override
  $ChatModelCopyWith<$Res>? get lastChat;
}

/// @nodoc
class __$RoomModelCopyWithImpl<$Res> extends _$RoomModelCopyWithImpl<$Res>
    implements _$RoomModelCopyWith<$Res> {
  __$RoomModelCopyWithImpl(_RoomModel _value, $Res Function(_RoomModel) _then)
      : super(_value, (v) => _then(v as _RoomModel));

  @override
  _RoomModel get _value => super._value as _RoomModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? isInstantChat = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastChatAt = freezed,
    Object? members = freezed,
    Object? memberIds = freezed,
    Object? lastChat = freezed,
  }) {
    return _then(_RoomModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isInstantChat: isInstantChat == freezed
          ? _value.isInstantChat
          : isInstantChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      lastChatAt: lastChatAt == freezed
          ? _value.lastChatAt
          : lastChatAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Profile>,
      memberIds: memberIds == freezed
          ? _value.memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastChat: lastChat == freezed
          ? _value.lastChat
          : lastChat // ignore: cast_nullable_to_non_nullable
              as ChatModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomModel implements _RoomModel {
  const _$_RoomModel(
      {required this.id,
      required this.isInstantChat,
      @TimeStampConverter() required this.createdAt,
      @TimeStampConverter() required this.updatedAt,
      @TimeStampNullConverter() this.lastChatAt,
      required this.members,
      required this.memberIds,
      @ChatModelConverter() this.lastChat});

  factory _$_RoomModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoomModelFromJson(json);

  @override
  final String id;
  @override
  final bool? isInstantChat;
  @override
  @TimeStampConverter()
  final Timestamp createdAt;
  @override
  @TimeStampConverter()
  final Timestamp updatedAt;
  @override
  @TimeStampNullConverter()
  final Timestamp? lastChatAt;
  @override
  final List<Profile> members;
  @override
  final List<String> memberIds;
  @override
  @ChatModelConverter()
  final ChatModel? lastChat;

  @override
  String toString() {
    return 'RoomModel(id: $id, isInstantChat: $isInstantChat, createdAt: $createdAt, updatedAt: $updatedAt, lastChatAt: $lastChatAt, members: $members, memberIds: $memberIds, lastChat: $lastChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isInstantChat, isInstantChat) ||
                other.isInstantChat == isInstantChat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastChatAt, lastChatAt) ||
                other.lastChatAt == lastChatAt) &&
            const DeepCollectionEquality().equals(other.members, members) &&
            const DeepCollectionEquality().equals(other.memberIds, memberIds) &&
            (identical(other.lastChat, lastChat) ||
                other.lastChat == lastChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isInstantChat,
      createdAt,
      updatedAt,
      lastChatAt,
      const DeepCollectionEquality().hash(members),
      const DeepCollectionEquality().hash(memberIds),
      lastChat);

  @JsonKey(ignore: true)
  @override
  _$RoomModelCopyWith<_RoomModel> get copyWith =>
      __$RoomModelCopyWithImpl<_RoomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomModelToJson(this);
  }
}

abstract class _RoomModel implements RoomModel {
  const factory _RoomModel(
      {required String id,
      required bool? isInstantChat,
      @TimeStampConverter() required Timestamp createdAt,
      @TimeStampConverter() required Timestamp updatedAt,
      @TimeStampNullConverter() Timestamp? lastChatAt,
      required List<Profile> members,
      required List<String> memberIds,
      @ChatModelConverter() ChatModel? lastChat}) = _$_RoomModel;

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$_RoomModel.fromJson;

  @override
  String get id;
  @override
  bool? get isInstantChat;
  @override
  @TimeStampConverter()
  Timestamp get createdAt;
  @override
  @TimeStampConverter()
  Timestamp get updatedAt;
  @override
  @TimeStampNullConverter()
  Timestamp? get lastChatAt;
  @override
  List<Profile> get members;
  @override
  List<String> get memberIds;
  @override
  @ChatModelConverter()
  ChatModel? get lastChat;
  @override
  @JsonKey(ignore: true)
  _$RoomModelCopyWith<_RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
