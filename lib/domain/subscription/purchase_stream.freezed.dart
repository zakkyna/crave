// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchaseStreamTearOff {
  const _$PurchaseStreamTearOff();

  _PurchaseStream call(
      {required StreamSubscription<List<PurchaseDetails>> subscription}) {
    return _PurchaseStream(
      subscription: subscription,
    );
  }
}

/// @nodoc
const $PurchaseStream = _$PurchaseStreamTearOff();

/// @nodoc
mixin _$PurchaseStream {
  StreamSubscription<List<PurchaseDetails>> get subscription =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseStreamCopyWith<PurchaseStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseStreamCopyWith<$Res> {
  factory $PurchaseStreamCopyWith(
          PurchaseStream value, $Res Function(PurchaseStream) then) =
      _$PurchaseStreamCopyWithImpl<$Res>;
  $Res call({StreamSubscription<List<PurchaseDetails>> subscription});
}

/// @nodoc
class _$PurchaseStreamCopyWithImpl<$Res>
    implements $PurchaseStreamCopyWith<$Res> {
  _$PurchaseStreamCopyWithImpl(this._value, this._then);

  final PurchaseStream _value;
  // ignore: unused_field
  final $Res Function(PurchaseStream) _then;

  @override
  $Res call({
    Object? subscription = freezed,
  }) {
    return _then(_value.copyWith(
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StreamSubscription<List<PurchaseDetails>>,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseStreamCopyWith<$Res>
    implements $PurchaseStreamCopyWith<$Res> {
  factory _$PurchaseStreamCopyWith(
          _PurchaseStream value, $Res Function(_PurchaseStream) then) =
      __$PurchaseStreamCopyWithImpl<$Res>;
  @override
  $Res call({StreamSubscription<List<PurchaseDetails>> subscription});
}

/// @nodoc
class __$PurchaseStreamCopyWithImpl<$Res>
    extends _$PurchaseStreamCopyWithImpl<$Res>
    implements _$PurchaseStreamCopyWith<$Res> {
  __$PurchaseStreamCopyWithImpl(
      _PurchaseStream _value, $Res Function(_PurchaseStream) _then)
      : super(_value, (v) => _then(v as _PurchaseStream));

  @override
  _PurchaseStream get _value => super._value as _PurchaseStream;

  @override
  $Res call({
    Object? subscription = freezed,
  }) {
    return _then(_PurchaseStream(
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as StreamSubscription<List<PurchaseDetails>>,
    ));
  }
}

/// @nodoc

class _$_PurchaseStream implements _PurchaseStream {
  const _$_PurchaseStream({required this.subscription});

  @override
  final StreamSubscription<List<PurchaseDetails>> subscription;

  @override
  String toString() {
    return 'PurchaseStream(subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseStream &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscription);

  @JsonKey(ignore: true)
  @override
  _$PurchaseStreamCopyWith<_PurchaseStream> get copyWith =>
      __$PurchaseStreamCopyWithImpl<_PurchaseStream>(this, _$identity);
}

abstract class _PurchaseStream implements PurchaseStream {
  const factory _PurchaseStream(
          {required StreamSubscription<List<PurchaseDetails>> subscription}) =
      _$_PurchaseStream;

  @override
  StreamSubscription<List<PurchaseDetails>> get subscription;
  @override
  @JsonKey(ignore: true)
  _$PurchaseStreamCopyWith<_PurchaseStream> get copyWith =>
      throw _privateConstructorUsedError;
}
