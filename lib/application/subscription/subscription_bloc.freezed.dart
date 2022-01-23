// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionEventTearOff {
  const _$SubscriptionEventTearOff();

  _CheckSubscription checkSubscription() {
    return const _CheckSubscription();
  }

  _BuySubs buySubs(int id) {
    return _BuySubs(
      id,
    );
  }
}

/// @nodoc
const $SubscriptionEvent = _$SubscriptionEventTearOff();

/// @nodoc
mixin _$SubscriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSubscription,
    required TResult Function(int id) buySubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkSubscription,
    TResult Function(int id)? buySubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSubscription,
    TResult Function(int id)? buySubs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSubscription value) checkSubscription,
    required TResult Function(_BuySubs value) buySubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckSubscription value)? checkSubscription,
    TResult Function(_BuySubs value)? buySubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSubscription value)? checkSubscription,
    TResult Function(_BuySubs value)? buySubs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
          SubscriptionEvent value, $Res Function(SubscriptionEvent) then) =
      _$SubscriptionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  final SubscriptionEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionEvent) _then;
}

/// @nodoc
abstract class _$CheckSubscriptionCopyWith<$Res> {
  factory _$CheckSubscriptionCopyWith(
          _CheckSubscription value, $Res Function(_CheckSubscription) then) =
      __$CheckSubscriptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckSubscriptionCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res>
    implements _$CheckSubscriptionCopyWith<$Res> {
  __$CheckSubscriptionCopyWithImpl(
      _CheckSubscription _value, $Res Function(_CheckSubscription) _then)
      : super(_value, (v) => _then(v as _CheckSubscription));

  @override
  _CheckSubscription get _value => super._value as _CheckSubscription;
}

/// @nodoc

class _$_CheckSubscription implements _CheckSubscription {
  const _$_CheckSubscription();

  @override
  String toString() {
    return 'SubscriptionEvent.checkSubscription()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckSubscription);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSubscription,
    required TResult Function(int id) buySubs,
  }) {
    return checkSubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkSubscription,
    TResult Function(int id)? buySubs,
  }) {
    return checkSubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSubscription,
    TResult Function(int id)? buySubs,
    required TResult orElse(),
  }) {
    if (checkSubscription != null) {
      return checkSubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSubscription value) checkSubscription,
    required TResult Function(_BuySubs value) buySubs,
  }) {
    return checkSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckSubscription value)? checkSubscription,
    TResult Function(_BuySubs value)? buySubs,
  }) {
    return checkSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSubscription value)? checkSubscription,
    TResult Function(_BuySubs value)? buySubs,
    required TResult orElse(),
  }) {
    if (checkSubscription != null) {
      return checkSubscription(this);
    }
    return orElse();
  }
}

abstract class _CheckSubscription implements SubscriptionEvent {
  const factory _CheckSubscription() = _$_CheckSubscription;
}

/// @nodoc
abstract class _$BuySubsCopyWith<$Res> {
  factory _$BuySubsCopyWith(_BuySubs value, $Res Function(_BuySubs) then) =
      __$BuySubsCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$BuySubsCopyWithImpl<$Res> extends _$SubscriptionEventCopyWithImpl<$Res>
    implements _$BuySubsCopyWith<$Res> {
  __$BuySubsCopyWithImpl(_BuySubs _value, $Res Function(_BuySubs) _then)
      : super(_value, (v) => _then(v as _BuySubs));

  @override
  _BuySubs get _value => super._value as _BuySubs;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_BuySubs(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BuySubs implements _BuySubs {
  const _$_BuySubs(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SubscriptionEvent.buySubs(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuySubs &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  _$BuySubsCopyWith<_BuySubs> get copyWith =>
      __$BuySubsCopyWithImpl<_BuySubs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSubscription,
    required TResult Function(int id) buySubs,
  }) {
    return buySubs(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkSubscription,
    TResult Function(int id)? buySubs,
  }) {
    return buySubs?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSubscription,
    TResult Function(int id)? buySubs,
    required TResult orElse(),
  }) {
    if (buySubs != null) {
      return buySubs(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSubscription value) checkSubscription,
    required TResult Function(_BuySubs value) buySubs,
  }) {
    return buySubs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckSubscription value)? checkSubscription,
    TResult Function(_BuySubs value)? buySubs,
  }) {
    return buySubs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSubscription value)? checkSubscription,
    TResult Function(_BuySubs value)? buySubs,
    required TResult orElse(),
  }) {
    if (buySubs != null) {
      return buySubs(this);
    }
    return orElse();
  }
}

abstract class _BuySubs implements SubscriptionEvent {
  const factory _BuySubs(int id) = _$_BuySubs;

  int get id;
  @JsonKey(ignore: true)
  _$BuySubsCopyWith<_BuySubs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SubscriptionStateTearOff {
  const _$SubscriptionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Subscribed subscribed() {
    return const _Subscribed();
  }

  _Unsubscribed unsubscribed() {
    return const _Unsubscribed();
  }

  _Failure failure(SubscriptionFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $SubscriptionState = _$SubscriptionStateTearOff();

/// @nodoc
mixin _$SubscriptionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(SubscriptionFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  final SubscriptionState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SubscriptionStateCopyWithImpl<$Res>
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
    return 'SubscriptionState.initial()';
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
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(SubscriptionFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
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
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscriptionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SubscribedCopyWith<$Res> {
  factory _$SubscribedCopyWith(
          _Subscribed value, $Res Function(_Subscribed) then) =
      __$SubscribedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubscribedCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res>
    implements _$SubscribedCopyWith<$Res> {
  __$SubscribedCopyWithImpl(
      _Subscribed _value, $Res Function(_Subscribed) _then)
      : super(_value, (v) => _then(v as _Subscribed));

  @override
  _Subscribed get _value => super._value as _Subscribed;
}

/// @nodoc

class _$_Subscribed implements _Subscribed {
  const _$_Subscribed();

  @override
  String toString() {
    return 'SubscriptionState.subscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Subscribed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(SubscriptionFailure failure) failure,
  }) {
    return subscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
  }) {
    return subscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_Failure value) failure,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class _Subscribed implements SubscriptionState {
  const factory _Subscribed() = _$_Subscribed;
}

/// @nodoc
abstract class _$UnsubscribedCopyWith<$Res> {
  factory _$UnsubscribedCopyWith(
          _Unsubscribed value, $Res Function(_Unsubscribed) then) =
      __$UnsubscribedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnsubscribedCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res>
    implements _$UnsubscribedCopyWith<$Res> {
  __$UnsubscribedCopyWithImpl(
      _Unsubscribed _value, $Res Function(_Unsubscribed) _then)
      : super(_value, (v) => _then(v as _Unsubscribed));

  @override
  _Unsubscribed get _value => super._value as _Unsubscribed;
}

/// @nodoc

class _$_Unsubscribed implements _Unsubscribed {
  const _$_Unsubscribed();

  @override
  String toString() {
    return 'SubscriptionState.unsubscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unsubscribed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(SubscriptionFailure failure) failure,
  }) {
    return unsubscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
  }) {
    return unsubscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_Failure value) failure,
  }) {
    return unsubscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
  }) {
    return unsubscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(this);
    }
    return orElse();
  }
}

abstract class _Unsubscribed implements SubscriptionState {
  const factory _Unsubscribed() = _$_Unsubscribed;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({SubscriptionFailure failure});

  $SubscriptionFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$SubscriptionStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SubscriptionFailure,
    ));
  }

  @override
  $SubscriptionFailureCopyWith<$Res> get failure {
    return $SubscriptionFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final SubscriptionFailure failure;

  @override
  String toString() {
    return 'SubscriptionState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(SubscriptionFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(SubscriptionFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Subscribed value) subscribed,
    required TResult Function(_Unsubscribed value) unsubscribed,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Subscribed value)? subscribed,
    TResult Function(_Unsubscribed value)? unsubscribed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SubscriptionState {
  const factory _Failure(SubscriptionFailure failure) = _$_Failure;

  SubscriptionFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
