// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostRequestTearOff {
  const _$PostRequestTearOff();

  _PostRequest call({required int pageSize, required int page}) {
    return _PostRequest(
      pageSize: pageSize,
      page: page,
    );
  }
}

/// @nodoc
const $PostRequest = _$PostRequestTearOff();

/// @nodoc
mixin _$PostRequest {
  int get pageSize => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostRequestCopyWith<PostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRequestCopyWith<$Res> {
  factory $PostRequestCopyWith(
          PostRequest value, $Res Function(PostRequest) then) =
      _$PostRequestCopyWithImpl<$Res>;
  $Res call({int pageSize, int page});
}

/// @nodoc
class _$PostRequestCopyWithImpl<$Res> implements $PostRequestCopyWith<$Res> {
  _$PostRequestCopyWithImpl(this._value, this._then);

  final PostRequest _value;
  // ignore: unused_field
  final $Res Function(PostRequest) _then;

  @override
  $Res call({
    Object? pageSize = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PostRequestCopyWith<$Res>
    implements $PostRequestCopyWith<$Res> {
  factory _$PostRequestCopyWith(
          _PostRequest value, $Res Function(_PostRequest) then) =
      __$PostRequestCopyWithImpl<$Res>;
  @override
  $Res call({int pageSize, int page});
}

/// @nodoc
class __$PostRequestCopyWithImpl<$Res> extends _$PostRequestCopyWithImpl<$Res>
    implements _$PostRequestCopyWith<$Res> {
  __$PostRequestCopyWithImpl(
      _PostRequest _value, $Res Function(_PostRequest) _then)
      : super(_value, (v) => _then(v as _PostRequest));

  @override
  _PostRequest get _value => super._value as _PostRequest;

  @override
  $Res call({
    Object? pageSize = freezed,
    Object? page = freezed,
  }) {
    return _then(_PostRequest(
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostRequest implements _PostRequest {
  const _$_PostRequest({required this.pageSize, required this.page});

  @override
  final int pageSize;
  @override
  final int page;

  @override
  String toString() {
    return 'PostRequest(pageSize: $pageSize, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostRequest &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize, page);

  @JsonKey(ignore: true)
  @override
  _$PostRequestCopyWith<_PostRequest> get copyWith =>
      __$PostRequestCopyWithImpl<_PostRequest>(this, _$identity);
}

abstract class _PostRequest implements PostRequest {
  const factory _PostRequest({required int pageSize, required int page}) =
      _$_PostRequest;

  @override
  int get pageSize;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$PostRequestCopyWith<_PostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
