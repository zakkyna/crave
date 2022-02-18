// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchaseEventTearOff {
  const _$PurchaseEventTearOff();

  _GetPurchaseStream getPurchaseStream(
      {required dynamic Function(dynamic)? onError}) {
    return _GetPurchaseStream(
      onError: onError,
    );
  }

  _GetProducts getProducts() {
    return const _GetProducts();
  }

  _BuyProduct buyProduct(String productId) {
    return _BuyProduct(
      productId,
    );
  }

  _VerifyPurchase verifyPurchase(PurchaseDetails purchaseDetails) {
    return _VerifyPurchase(
      purchaseDetails,
    );
  }

  _CompletePurchase completePurchase(PurchaseDetails purchaseDetails) {
    return _CompletePurchase(
      purchaseDetails,
    );
  }

  _ClearError clearError() {
    return const _ClearError();
  }
}

/// @nodoc
const $PurchaseEvent = _$PurchaseEventTearOff();

/// @nodoc
mixin _$PurchaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(dynamic)? onError)
        getPurchaseStream,
    required TResult Function() getProducts,
    required TResult Function(String productId) buyProduct,
    required TResult Function(PurchaseDetails purchaseDetails) verifyPurchase,
    required TResult Function(PurchaseDetails purchaseDetails) completePurchase,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchaseStream value) getPurchaseStream,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_BuyProduct value) buyProduct,
    required TResult Function(_VerifyPurchase value) verifyPurchase,
    required TResult Function(_CompletePurchase value) completePurchase,
    required TResult Function(_ClearError value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseEventCopyWith<$Res> {
  factory $PurchaseEventCopyWith(
          PurchaseEvent value, $Res Function(PurchaseEvent) then) =
      _$PurchaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PurchaseEventCopyWithImpl<$Res>
    implements $PurchaseEventCopyWith<$Res> {
  _$PurchaseEventCopyWithImpl(this._value, this._then);

  final PurchaseEvent _value;
  // ignore: unused_field
  final $Res Function(PurchaseEvent) _then;
}

/// @nodoc
abstract class _$GetPurchaseStreamCopyWith<$Res> {
  factory _$GetPurchaseStreamCopyWith(
          _GetPurchaseStream value, $Res Function(_GetPurchaseStream) then) =
      __$GetPurchaseStreamCopyWithImpl<$Res>;
  $Res call({dynamic Function(dynamic)? onError});
}

/// @nodoc
class __$GetPurchaseStreamCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res>
    implements _$GetPurchaseStreamCopyWith<$Res> {
  __$GetPurchaseStreamCopyWithImpl(
      _GetPurchaseStream _value, $Res Function(_GetPurchaseStream) _then)
      : super(_value, (v) => _then(v as _GetPurchaseStream));

  @override
  _GetPurchaseStream get _value => super._value as _GetPurchaseStream;

  @override
  $Res call({
    Object? onError = freezed,
  }) {
    return _then(_GetPurchaseStream(
      onError: onError == freezed
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic)?,
    ));
  }
}

/// @nodoc

class _$_GetPurchaseStream implements _GetPurchaseStream {
  const _$_GetPurchaseStream({required this.onError});

  @override
  final dynamic Function(dynamic)? onError;

  @override
  String toString() {
    return 'PurchaseEvent.getPurchaseStream(onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPurchaseStream &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError);

  @JsonKey(ignore: true)
  @override
  _$GetPurchaseStreamCopyWith<_GetPurchaseStream> get copyWith =>
      __$GetPurchaseStreamCopyWithImpl<_GetPurchaseStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(dynamic)? onError)
        getPurchaseStream,
    required TResult Function() getProducts,
    required TResult Function(String productId) buyProduct,
    required TResult Function(PurchaseDetails purchaseDetails) verifyPurchase,
    required TResult Function(PurchaseDetails purchaseDetails) completePurchase,
    required TResult Function() clearError,
  }) {
    return getPurchaseStream(onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
  }) {
    return getPurchaseStream?.call(onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getPurchaseStream != null) {
      return getPurchaseStream(onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchaseStream value) getPurchaseStream,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_BuyProduct value) buyProduct,
    required TResult Function(_VerifyPurchase value) verifyPurchase,
    required TResult Function(_CompletePurchase value) completePurchase,
    required TResult Function(_ClearError value) clearError,
  }) {
    return getPurchaseStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
  }) {
    return getPurchaseStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (getPurchaseStream != null) {
      return getPurchaseStream(this);
    }
    return orElse();
  }
}

abstract class _GetPurchaseStream implements PurchaseEvent {
  const factory _GetPurchaseStream(
      {required dynamic Function(dynamic)? onError}) = _$_GetPurchaseStream;

  dynamic Function(dynamic)? get onError;
  @JsonKey(ignore: true)
  _$GetPurchaseStreamCopyWith<_GetPurchaseStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetProductsCopyWith<$Res> {
  factory _$GetProductsCopyWith(
          _GetProducts value, $Res Function(_GetProducts) then) =
      __$GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProductsCopyWithImpl<$Res> extends _$PurchaseEventCopyWithImpl<$Res>
    implements _$GetProductsCopyWith<$Res> {
  __$GetProductsCopyWithImpl(
      _GetProducts _value, $Res Function(_GetProducts) _then)
      : super(_value, (v) => _then(v as _GetProducts));

  @override
  _GetProducts get _value => super._value as _GetProducts;
}

/// @nodoc

class _$_GetProducts implements _GetProducts {
  const _$_GetProducts();

  @override
  String toString() {
    return 'PurchaseEvent.getProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(dynamic)? onError)
        getPurchaseStream,
    required TResult Function() getProducts,
    required TResult Function(String productId) buyProduct,
    required TResult Function(PurchaseDetails purchaseDetails) verifyPurchase,
    required TResult Function(PurchaseDetails purchaseDetails) completePurchase,
    required TResult Function() clearError,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchaseStream value) getPurchaseStream,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_BuyProduct value) buyProduct,
    required TResult Function(_VerifyPurchase value) verifyPurchase,
    required TResult Function(_CompletePurchase value) completePurchase,
    required TResult Function(_ClearError value) clearError,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements PurchaseEvent {
  const factory _GetProducts() = _$_GetProducts;
}

/// @nodoc
abstract class _$BuyProductCopyWith<$Res> {
  factory _$BuyProductCopyWith(
          _BuyProduct value, $Res Function(_BuyProduct) then) =
      __$BuyProductCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class __$BuyProductCopyWithImpl<$Res> extends _$PurchaseEventCopyWithImpl<$Res>
    implements _$BuyProductCopyWith<$Res> {
  __$BuyProductCopyWithImpl(
      _BuyProduct _value, $Res Function(_BuyProduct) _then)
      : super(_value, (v) => _then(v as _BuyProduct));

  @override
  _BuyProduct get _value => super._value as _BuyProduct;

  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_BuyProduct(
      productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BuyProduct implements _BuyProduct {
  const _$_BuyProduct(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'PurchaseEvent.buyProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuyProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  _$BuyProductCopyWith<_BuyProduct> get copyWith =>
      __$BuyProductCopyWithImpl<_BuyProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(dynamic)? onError)
        getPurchaseStream,
    required TResult Function() getProducts,
    required TResult Function(String productId) buyProduct,
    required TResult Function(PurchaseDetails purchaseDetails) verifyPurchase,
    required TResult Function(PurchaseDetails purchaseDetails) completePurchase,
    required TResult Function() clearError,
  }) {
    return buyProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
  }) {
    return buyProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (buyProduct != null) {
      return buyProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchaseStream value) getPurchaseStream,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_BuyProduct value) buyProduct,
    required TResult Function(_VerifyPurchase value) verifyPurchase,
    required TResult Function(_CompletePurchase value) completePurchase,
    required TResult Function(_ClearError value) clearError,
  }) {
    return buyProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
  }) {
    return buyProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (buyProduct != null) {
      return buyProduct(this);
    }
    return orElse();
  }
}

abstract class _BuyProduct implements PurchaseEvent {
  const factory _BuyProduct(String productId) = _$_BuyProduct;

  String get productId;
  @JsonKey(ignore: true)
  _$BuyProductCopyWith<_BuyProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyPurchaseCopyWith<$Res> {
  factory _$VerifyPurchaseCopyWith(
          _VerifyPurchase value, $Res Function(_VerifyPurchase) then) =
      __$VerifyPurchaseCopyWithImpl<$Res>;
  $Res call({PurchaseDetails purchaseDetails});
}

/// @nodoc
class __$VerifyPurchaseCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res>
    implements _$VerifyPurchaseCopyWith<$Res> {
  __$VerifyPurchaseCopyWithImpl(
      _VerifyPurchase _value, $Res Function(_VerifyPurchase) _then)
      : super(_value, (v) => _then(v as _VerifyPurchase));

  @override
  _VerifyPurchase get _value => super._value as _VerifyPurchase;

  @override
  $Res call({
    Object? purchaseDetails = freezed,
  }) {
    return _then(_VerifyPurchase(
      purchaseDetails == freezed
          ? _value.purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as PurchaseDetails,
    ));
  }
}

/// @nodoc

class _$_VerifyPurchase implements _VerifyPurchase {
  const _$_VerifyPurchase(this.purchaseDetails);

  @override
  final PurchaseDetails purchaseDetails;

  @override
  String toString() {
    return 'PurchaseEvent.verifyPurchase(purchaseDetails: $purchaseDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyPurchase &&
            (identical(other.purchaseDetails, purchaseDetails) ||
                other.purchaseDetails == purchaseDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseDetails);

  @JsonKey(ignore: true)
  @override
  _$VerifyPurchaseCopyWith<_VerifyPurchase> get copyWith =>
      __$VerifyPurchaseCopyWithImpl<_VerifyPurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(dynamic)? onError)
        getPurchaseStream,
    required TResult Function() getProducts,
    required TResult Function(String productId) buyProduct,
    required TResult Function(PurchaseDetails purchaseDetails) verifyPurchase,
    required TResult Function(PurchaseDetails purchaseDetails) completePurchase,
    required TResult Function() clearError,
  }) {
    return verifyPurchase(purchaseDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
  }) {
    return verifyPurchase?.call(purchaseDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (verifyPurchase != null) {
      return verifyPurchase(purchaseDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchaseStream value) getPurchaseStream,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_BuyProduct value) buyProduct,
    required TResult Function(_VerifyPurchase value) verifyPurchase,
    required TResult Function(_CompletePurchase value) completePurchase,
    required TResult Function(_ClearError value) clearError,
  }) {
    return verifyPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
  }) {
    return verifyPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (verifyPurchase != null) {
      return verifyPurchase(this);
    }
    return orElse();
  }
}

abstract class _VerifyPurchase implements PurchaseEvent {
  const factory _VerifyPurchase(PurchaseDetails purchaseDetails) =
      _$_VerifyPurchase;

  PurchaseDetails get purchaseDetails;
  @JsonKey(ignore: true)
  _$VerifyPurchaseCopyWith<_VerifyPurchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompletePurchaseCopyWith<$Res> {
  factory _$CompletePurchaseCopyWith(
          _CompletePurchase value, $Res Function(_CompletePurchase) then) =
      __$CompletePurchaseCopyWithImpl<$Res>;
  $Res call({PurchaseDetails purchaseDetails});
}

/// @nodoc
class __$CompletePurchaseCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res>
    implements _$CompletePurchaseCopyWith<$Res> {
  __$CompletePurchaseCopyWithImpl(
      _CompletePurchase _value, $Res Function(_CompletePurchase) _then)
      : super(_value, (v) => _then(v as _CompletePurchase));

  @override
  _CompletePurchase get _value => super._value as _CompletePurchase;

  @override
  $Res call({
    Object? purchaseDetails = freezed,
  }) {
    return _then(_CompletePurchase(
      purchaseDetails == freezed
          ? _value.purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as PurchaseDetails,
    ));
  }
}

/// @nodoc

class _$_CompletePurchase implements _CompletePurchase {
  const _$_CompletePurchase(this.purchaseDetails);

  @override
  final PurchaseDetails purchaseDetails;

  @override
  String toString() {
    return 'PurchaseEvent.completePurchase(purchaseDetails: $purchaseDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompletePurchase &&
            (identical(other.purchaseDetails, purchaseDetails) ||
                other.purchaseDetails == purchaseDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchaseDetails);

  @JsonKey(ignore: true)
  @override
  _$CompletePurchaseCopyWith<_CompletePurchase> get copyWith =>
      __$CompletePurchaseCopyWithImpl<_CompletePurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(dynamic)? onError)
        getPurchaseStream,
    required TResult Function() getProducts,
    required TResult Function(String productId) buyProduct,
    required TResult Function(PurchaseDetails purchaseDetails) verifyPurchase,
    required TResult Function(PurchaseDetails purchaseDetails) completePurchase,
    required TResult Function() clearError,
  }) {
    return completePurchase(purchaseDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
  }) {
    return completePurchase?.call(purchaseDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (completePurchase != null) {
      return completePurchase(purchaseDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchaseStream value) getPurchaseStream,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_BuyProduct value) buyProduct,
    required TResult Function(_VerifyPurchase value) verifyPurchase,
    required TResult Function(_CompletePurchase value) completePurchase,
    required TResult Function(_ClearError value) clearError,
  }) {
    return completePurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
  }) {
    return completePurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (completePurchase != null) {
      return completePurchase(this);
    }
    return orElse();
  }
}

abstract class _CompletePurchase implements PurchaseEvent {
  const factory _CompletePurchase(PurchaseDetails purchaseDetails) =
      _$_CompletePurchase;

  PurchaseDetails get purchaseDetails;
  @JsonKey(ignore: true)
  _$CompletePurchaseCopyWith<_CompletePurchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearErrorCopyWith<$Res> {
  factory _$ClearErrorCopyWith(
          _ClearError value, $Res Function(_ClearError) then) =
      __$ClearErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearErrorCopyWithImpl<$Res> extends _$PurchaseEventCopyWithImpl<$Res>
    implements _$ClearErrorCopyWith<$Res> {
  __$ClearErrorCopyWithImpl(
      _ClearError _value, $Res Function(_ClearError) _then)
      : super(_value, (v) => _then(v as _ClearError));

  @override
  _ClearError get _value => super._value as _ClearError;
}

/// @nodoc

class _$_ClearError implements _ClearError {
  const _$_ClearError();

  @override
  String toString() {
    return 'PurchaseEvent.clearError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(dynamic)? onError)
        getPurchaseStream,
    required TResult Function() getProducts,
    required TResult Function(String productId) buyProduct,
    required TResult Function(PurchaseDetails purchaseDetails) verifyPurchase,
    required TResult Function(PurchaseDetails purchaseDetails) completePurchase,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(dynamic)? onError)? getPurchaseStream,
    TResult Function()? getProducts,
    TResult Function(String productId)? buyProduct,
    TResult Function(PurchaseDetails purchaseDetails)? verifyPurchase,
    TResult Function(PurchaseDetails purchaseDetails)? completePurchase,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPurchaseStream value) getPurchaseStream,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_BuyProduct value) buyProduct,
    required TResult Function(_VerifyPurchase value) verifyPurchase,
    required TResult Function(_CompletePurchase value) completePurchase,
    required TResult Function(_ClearError value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPurchaseStream value)? getPurchaseStream,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_BuyProduct value)? buyProduct,
    TResult Function(_VerifyPurchase value)? verifyPurchase,
    TResult Function(_CompletePurchase value)? completePurchase,
    TResult Function(_ClearError value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearError implements PurchaseEvent {
  const factory _ClearError() = _$_ClearError;
}

/// @nodoc
class _$PurchaseStateTearOff {
  const _$PurchaseStateTearOff();

  _PurchaseState call(
      {required bool isLoading,
      required Option<PurchaseStream> purchaseStream,
      required Option<IList<ProductDetails>> getProductOption,
      required Option<Either<SubscriptionFailure, Unit>>
          buyProductFailureOrSuccessOption,
      required Option<Either<SubscriptionFailure, PurchaseDetails>>
          verifyPurchaseFailureOrSuccessOption,
      required Option<Either<SubscriptionFailure, bool>>
          completePurchaseFailureOrSuccessOption}) {
    return _PurchaseState(
      isLoading: isLoading,
      purchaseStream: purchaseStream,
      getProductOption: getProductOption,
      buyProductFailureOrSuccessOption: buyProductFailureOrSuccessOption,
      verifyPurchaseFailureOrSuccessOption:
          verifyPurchaseFailureOrSuccessOption,
      completePurchaseFailureOrSuccessOption:
          completePurchaseFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PurchaseState = _$PurchaseStateTearOff();

/// @nodoc
mixin _$PurchaseState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<PurchaseStream> get purchaseStream =>
      throw _privateConstructorUsedError;
  Option<IList<ProductDetails>> get getProductOption =>
      throw _privateConstructorUsedError;
  Option<Either<SubscriptionFailure, Unit>>
      get buyProductFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<SubscriptionFailure, PurchaseDetails>>
      get verifyPurchaseFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<SubscriptionFailure, bool>>
      get completePurchaseFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseStateCopyWith<PurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
          PurchaseState value, $Res Function(PurchaseState) then) =
      _$PurchaseStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<PurchaseStream> purchaseStream,
      Option<IList<ProductDetails>> getProductOption,
      Option<Either<SubscriptionFailure, Unit>>
          buyProductFailureOrSuccessOption,
      Option<Either<SubscriptionFailure, PurchaseDetails>>
          verifyPurchaseFailureOrSuccessOption,
      Option<Either<SubscriptionFailure, bool>>
          completePurchaseFailureOrSuccessOption});
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  final PurchaseState _value;
  // ignore: unused_field
  final $Res Function(PurchaseState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? purchaseStream = freezed,
    Object? getProductOption = freezed,
    Object? buyProductFailureOrSuccessOption = freezed,
    Object? verifyPurchaseFailureOrSuccessOption = freezed,
    Object? completePurchaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseStream: purchaseStream == freezed
          ? _value.purchaseStream
          : purchaseStream // ignore: cast_nullable_to_non_nullable
              as Option<PurchaseStream>,
      getProductOption: getProductOption == freezed
          ? _value.getProductOption
          : getProductOption // ignore: cast_nullable_to_non_nullable
              as Option<IList<ProductDetails>>,
      buyProductFailureOrSuccessOption: buyProductFailureOrSuccessOption ==
              freezed
          ? _value.buyProductFailureOrSuccessOption
          : buyProductFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubscriptionFailure, Unit>>,
      verifyPurchaseFailureOrSuccessOption: verifyPurchaseFailureOrSuccessOption ==
              freezed
          ? _value.verifyPurchaseFailureOrSuccessOption
          : verifyPurchaseFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubscriptionFailure, PurchaseDetails>>,
      completePurchaseFailureOrSuccessOption:
          completePurchaseFailureOrSuccessOption == freezed
              ? _value.completePurchaseFailureOrSuccessOption
              : completePurchaseFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<SubscriptionFailure, bool>>,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseStateCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$PurchaseStateCopyWith(
          _PurchaseState value, $Res Function(_PurchaseState) then) =
      __$PurchaseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<PurchaseStream> purchaseStream,
      Option<IList<ProductDetails>> getProductOption,
      Option<Either<SubscriptionFailure, Unit>>
          buyProductFailureOrSuccessOption,
      Option<Either<SubscriptionFailure, PurchaseDetails>>
          verifyPurchaseFailureOrSuccessOption,
      Option<Either<SubscriptionFailure, bool>>
          completePurchaseFailureOrSuccessOption});
}

/// @nodoc
class __$PurchaseStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res>
    implements _$PurchaseStateCopyWith<$Res> {
  __$PurchaseStateCopyWithImpl(
      _PurchaseState _value, $Res Function(_PurchaseState) _then)
      : super(_value, (v) => _then(v as _PurchaseState));

  @override
  _PurchaseState get _value => super._value as _PurchaseState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? purchaseStream = freezed,
    Object? getProductOption = freezed,
    Object? buyProductFailureOrSuccessOption = freezed,
    Object? verifyPurchaseFailureOrSuccessOption = freezed,
    Object? completePurchaseFailureOrSuccessOption = freezed,
  }) {
    return _then(_PurchaseState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      purchaseStream: purchaseStream == freezed
          ? _value.purchaseStream
          : purchaseStream // ignore: cast_nullable_to_non_nullable
              as Option<PurchaseStream>,
      getProductOption: getProductOption == freezed
          ? _value.getProductOption
          : getProductOption // ignore: cast_nullable_to_non_nullable
              as Option<IList<ProductDetails>>,
      buyProductFailureOrSuccessOption: buyProductFailureOrSuccessOption ==
              freezed
          ? _value.buyProductFailureOrSuccessOption
          : buyProductFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubscriptionFailure, Unit>>,
      verifyPurchaseFailureOrSuccessOption: verifyPurchaseFailureOrSuccessOption ==
              freezed
          ? _value.verifyPurchaseFailureOrSuccessOption
          : verifyPurchaseFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubscriptionFailure, PurchaseDetails>>,
      completePurchaseFailureOrSuccessOption:
          completePurchaseFailureOrSuccessOption == freezed
              ? _value.completePurchaseFailureOrSuccessOption
              : completePurchaseFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<SubscriptionFailure, bool>>,
    ));
  }
}

/// @nodoc

class _$_PurchaseState implements _PurchaseState {
  const _$_PurchaseState(
      {required this.isLoading,
      required this.purchaseStream,
      required this.getProductOption,
      required this.buyProductFailureOrSuccessOption,
      required this.verifyPurchaseFailureOrSuccessOption,
      required this.completePurchaseFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final Option<PurchaseStream> purchaseStream;
  @override
  final Option<IList<ProductDetails>> getProductOption;
  @override
  final Option<Either<SubscriptionFailure, Unit>>
      buyProductFailureOrSuccessOption;
  @override
  final Option<Either<SubscriptionFailure, PurchaseDetails>>
      verifyPurchaseFailureOrSuccessOption;
  @override
  final Option<Either<SubscriptionFailure, bool>>
      completePurchaseFailureOrSuccessOption;

  @override
  String toString() {
    return 'PurchaseState(isLoading: $isLoading, purchaseStream: $purchaseStream, getProductOption: $getProductOption, buyProductFailureOrSuccessOption: $buyProductFailureOrSuccessOption, verifyPurchaseFailureOrSuccessOption: $verifyPurchaseFailureOrSuccessOption, completePurchaseFailureOrSuccessOption: $completePurchaseFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.purchaseStream, purchaseStream) ||
                other.purchaseStream == purchaseStream) &&
            (identical(other.getProductOption, getProductOption) ||
                other.getProductOption == getProductOption) &&
            (identical(other.buyProductFailureOrSuccessOption,
                    buyProductFailureOrSuccessOption) ||
                other.buyProductFailureOrSuccessOption ==
                    buyProductFailureOrSuccessOption) &&
            (identical(other.verifyPurchaseFailureOrSuccessOption,
                    verifyPurchaseFailureOrSuccessOption) ||
                other.verifyPurchaseFailureOrSuccessOption ==
                    verifyPurchaseFailureOrSuccessOption) &&
            (identical(other.completePurchaseFailureOrSuccessOption,
                    completePurchaseFailureOrSuccessOption) ||
                other.completePurchaseFailureOrSuccessOption ==
                    completePurchaseFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      purchaseStream,
      getProductOption,
      buyProductFailureOrSuccessOption,
      verifyPurchaseFailureOrSuccessOption,
      completePurchaseFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      __$PurchaseStateCopyWithImpl<_PurchaseState>(this, _$identity);
}

abstract class _PurchaseState implements PurchaseState {
  const factory _PurchaseState(
      {required bool isLoading,
      required Option<PurchaseStream> purchaseStream,
      required Option<IList<ProductDetails>> getProductOption,
      required Option<Either<SubscriptionFailure, Unit>>
          buyProductFailureOrSuccessOption,
      required Option<Either<SubscriptionFailure, PurchaseDetails>>
          verifyPurchaseFailureOrSuccessOption,
      required Option<Either<SubscriptionFailure, bool>>
          completePurchaseFailureOrSuccessOption}) = _$_PurchaseState;

  @override
  bool get isLoading;
  @override
  Option<PurchaseStream> get purchaseStream;
  @override
  Option<IList<ProductDetails>> get getProductOption;
  @override
  Option<Either<SubscriptionFailure, Unit>>
      get buyProductFailureOrSuccessOption;
  @override
  Option<Either<SubscriptionFailure, PurchaseDetails>>
      get verifyPurchaseFailureOrSuccessOption;
  @override
  Option<Either<SubscriptionFailure, bool>>
      get completePurchaseFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$PurchaseStateCopyWith<_PurchaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
