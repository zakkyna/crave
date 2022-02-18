// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchaseRequestTearOff {
  const _$PurchaseRequestTearOff();

  _PurchaseRequest call(
      {required void Function(List<PurchaseDetails>)? onData,
      dynamic Function(dynamic)? onError,
      void Function()? onDone}) {
    return _PurchaseRequest(
      onData: onData,
      onError: onError,
      onDone: onDone,
    );
  }
}

/// @nodoc
const $PurchaseRequest = _$PurchaseRequestTearOff();

/// @nodoc
mixin _$PurchaseRequest {
  void Function(List<PurchaseDetails>)? get onData =>
      throw _privateConstructorUsedError;
  dynamic Function(dynamic)? get onError => throw _privateConstructorUsedError;
  void Function()? get onDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseRequestCopyWith<PurchaseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRequestCopyWith<$Res> {
  factory $PurchaseRequestCopyWith(
          PurchaseRequest value, $Res Function(PurchaseRequest) then) =
      _$PurchaseRequestCopyWithImpl<$Res>;
  $Res call(
      {void Function(List<PurchaseDetails>)? onData,
      dynamic Function(dynamic)? onError,
      void Function()? onDone});
}

/// @nodoc
class _$PurchaseRequestCopyWithImpl<$Res>
    implements $PurchaseRequestCopyWith<$Res> {
  _$PurchaseRequestCopyWithImpl(this._value, this._then);

  final PurchaseRequest _value;
  // ignore: unused_field
  final $Res Function(PurchaseRequest) _then;

  @override
  $Res call({
    Object? onData = freezed,
    Object? onError = freezed,
    Object? onDone = freezed,
  }) {
    return _then(_value.copyWith(
      onData: onData == freezed
          ? _value.onData
          : onData // ignore: cast_nullable_to_non_nullable
              as void Function(List<PurchaseDetails>)?,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic)?,
      onDone: onDone == freezed
          ? _value.onDone
          : onDone // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseRequestCopyWith<$Res>
    implements $PurchaseRequestCopyWith<$Res> {
  factory _$PurchaseRequestCopyWith(
          _PurchaseRequest value, $Res Function(_PurchaseRequest) then) =
      __$PurchaseRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {void Function(List<PurchaseDetails>)? onData,
      dynamic Function(dynamic)? onError,
      void Function()? onDone});
}

/// @nodoc
class __$PurchaseRequestCopyWithImpl<$Res>
    extends _$PurchaseRequestCopyWithImpl<$Res>
    implements _$PurchaseRequestCopyWith<$Res> {
  __$PurchaseRequestCopyWithImpl(
      _PurchaseRequest _value, $Res Function(_PurchaseRequest) _then)
      : super(_value, (v) => _then(v as _PurchaseRequest));

  @override
  _PurchaseRequest get _value => super._value as _PurchaseRequest;

  @override
  $Res call({
    Object? onData = freezed,
    Object? onError = freezed,
    Object? onDone = freezed,
  }) {
    return _then(_PurchaseRequest(
      onData: onData == freezed
          ? _value.onData
          : onData // ignore: cast_nullable_to_non_nullable
              as void Function(List<PurchaseDetails>)?,
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic)?,
      onDone: onDone == freezed
          ? _value.onDone
          : onDone // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$_PurchaseRequest implements _PurchaseRequest {
  const _$_PurchaseRequest({required this.onData, this.onError, this.onDone});

  @override
  final void Function(List<PurchaseDetails>)? onData;
  @override
  final dynamic Function(dynamic)? onError;
  @override
  final void Function()? onDone;

  @override
  String toString() {
    return 'PurchaseRequest(onData: $onData, onError: $onError, onDone: $onDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseRequest &&
            (identical(other.onData, onData) || other.onData == onData) &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onDone, onDone) || other.onDone == onDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onData, onError, onDone);

  @JsonKey(ignore: true)
  @override
  _$PurchaseRequestCopyWith<_PurchaseRequest> get copyWith =>
      __$PurchaseRequestCopyWithImpl<_PurchaseRequest>(this, _$identity);
}

abstract class _PurchaseRequest implements PurchaseRequest {
  const factory _PurchaseRequest(
      {required void Function(List<PurchaseDetails>)? onData,
      dynamic Function(dynamic)? onError,
      void Function()? onDone}) = _$_PurchaseRequest;

  @override
  void Function(List<PurchaseDetails>)? get onData;
  @override
  dynamic Function(dynamic)? get onError;
  @override
  void Function()? get onDone;
  @override
  @JsonKey(ignore: true)
  _$PurchaseRequestCopyWith<_PurchaseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
