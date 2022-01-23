// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
class _$ChatModelTearOff {
  const _$ChatModelTearOff();

  _ChatModel call(
      {required Author? author,
      required int? createdAt,
      required String? id,
      required String? status,
      required String? text,
      required String? type}) {
    return _ChatModel(
      author: author,
      createdAt: createdAt,
      id: id,
      status: status,
      text: text,
      type: type,
    );
  }

  ChatModel fromJson(Map<String, Object?> json) {
    return ChatModel.fromJson(json);
  }
}

/// @nodoc
const $ChatModel = _$ChatModelTearOff();

/// @nodoc
mixin _$ChatModel {
  Author? get author => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res>;
  $Res call(
      {Author? author,
      int? createdAt,
      String? id,
      String? status,
      String? text,
      String? type});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res> implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  final ChatModel _value;
  // ignore: unused_field
  final $Res Function(ChatModel) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$ChatModelCopyWith(
          _ChatModel value, $Res Function(_ChatModel) then) =
      __$ChatModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Author? author,
      int? createdAt,
      String? id,
      String? status,
      String? text,
      String? type});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$ChatModelCopyWithImpl<$Res> extends _$ChatModelCopyWithImpl<$Res>
    implements _$ChatModelCopyWith<$Res> {
  __$ChatModelCopyWithImpl(_ChatModel _value, $Res Function(_ChatModel) _then)
      : super(_value, (v) => _then(v as _ChatModel));

  @override
  _ChatModel get _value => super._value as _ChatModel;

  @override
  $Res call({
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_ChatModel(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ChatModel implements _ChatModel {
  const _$_ChatModel(
      {required this.author,
      required this.createdAt,
      required this.id,
      required this.status,
      required this.text,
      required this.type});

  factory _$_ChatModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatModelFromJson(json);

  @override
  final Author? author;
  @override
  final int? createdAt;
  @override
  final String? id;
  @override
  final String? status;
  @override
  final String? text;
  @override
  final String? type;

  @override
  String toString() {
    return 'ChatModel(author: $author, createdAt: $createdAt, id: $id, status: $status, text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatModel &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, author, createdAt, id, status, text, type);

  @JsonKey(ignore: true)
  @override
  _$ChatModelCopyWith<_ChatModel> get copyWith =>
      __$ChatModelCopyWithImpl<_ChatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatModelToJson(this);
  }
}

abstract class _ChatModel implements ChatModel {
  const factory _ChatModel(
      {required Author? author,
      required int? createdAt,
      required String? id,
      required String? status,
      required String? text,
      required String? type}) = _$_ChatModel;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$_ChatModel.fromJson;

  @override
  Author? get author;
  @override
  int? get createdAt;
  @override
  String? get id;
  @override
  String? get status;
  @override
  String? get text;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$ChatModelCopyWith<_ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
class _$AuthorTearOff {
  const _$AuthorTearOff();

  _Author call(
      {required String? firstName,
      required String id,
      required String? imageUrl}) {
    return _Author(
      firstName: firstName,
      id: id,
      imageUrl: imageUrl,
    );
  }

  Author fromJson(Map<String, Object?> json) {
    return Author.fromJson(json);
  }
}

/// @nodoc
const $Author = _$AuthorTearOff();

/// @nodoc
mixin _$Author {
  String? get firstName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res>;
  $Res call({String? firstName, String id, String? imageUrl});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res> implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  final Author _value;
  // ignore: unused_field
  final $Res Function(Author) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$AuthorCopyWith(_Author value, $Res Function(_Author) then) =
      __$AuthorCopyWithImpl<$Res>;
  @override
  $Res call({String? firstName, String id, String? imageUrl});
}

/// @nodoc
class __$AuthorCopyWithImpl<$Res> extends _$AuthorCopyWithImpl<$Res>
    implements _$AuthorCopyWith<$Res> {
  __$AuthorCopyWithImpl(_Author _value, $Res Function(_Author) _then)
      : super(_value, (v) => _then(v as _Author));

  @override
  _Author get _value => super._value as _Author;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Author(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Author implements _Author {
  const _$_Author(
      {required this.firstName, required this.id, required this.imageUrl});

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final String? firstName;
  @override
  final String id;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'Author(firstName: $firstName, id: $id, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Author &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, id, imageUrl);

  @JsonKey(ignore: true)
  @override
  _$AuthorCopyWith<_Author> get copyWith =>
      __$AuthorCopyWithImpl<_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(this);
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {required String? firstName,
      required String id,
      required String? imageUrl}) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  String? get firstName;
  @override
  String get id;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$AuthorCopyWith<_Author> get copyWith => throw _privateConstructorUsedError;
}
