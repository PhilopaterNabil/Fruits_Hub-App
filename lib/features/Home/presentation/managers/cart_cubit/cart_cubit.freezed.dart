// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialCartStateImplCopyWith<$Res> {
  factory _$$InitialCartStateImplCopyWith(_$InitialCartStateImpl value,
          $Res Function(_$InitialCartStateImpl) then) =
      __$$InitialCartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialCartStateImpl>
    implements _$$InitialCartStateImplCopyWith<$Res> {
  __$$InitialCartStateImplCopyWithImpl(_$InitialCartStateImpl _value,
      $Res Function(_$InitialCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialCartStateImpl
    with DiagnosticableTreeMixin
    implements _InitialCartState {
  const _$InitialCartStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CartState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCartStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
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
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCartState implements CartState {
  const factory _InitialCartState() = _$InitialCartStateImpl;
}

/// @nodoc
abstract class _$$LoadingCartStateImplCopyWith<$Res> {
  factory _$$LoadingCartStateImplCopyWith(_$LoadingCartStateImpl value,
          $Res Function(_$LoadingCartStateImpl) then) =
      __$$LoadingCartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingCartStateImpl>
    implements _$$LoadingCartStateImplCopyWith<$Res> {
  __$$LoadingCartStateImplCopyWithImpl(_$LoadingCartStateImpl _value,
      $Res Function(_$LoadingCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingCartStateImpl
    with DiagnosticableTreeMixin
    implements LoadingCartState {
  const _$LoadingCartStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CartState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCartStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
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
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCartState implements CartState {
  const factory LoadingCartState() = _$LoadingCartStateImpl;
}

/// @nodoc
abstract class _$$SuccessCartStateImplCopyWith<$Res> {
  factory _$$SuccessCartStateImplCopyWith(_$SuccessCartStateImpl value,
          $Res Function(_$SuccessCartStateImpl) then) =
      __$$SuccessCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItemEntity> cartItems});
}

/// @nodoc
class __$$SuccessCartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$SuccessCartStateImpl>
    implements _$$SuccessCartStateImplCopyWith<$Res> {
  __$$SuccessCartStateImplCopyWithImpl(_$SuccessCartStateImpl _value,
      $Res Function(_$SuccessCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$SuccessCartStateImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessCartStateImpl
    with DiagnosticableTreeMixin
    implements SuccessCartState {
  const _$SuccessCartStateImpl({required final List<CartItemEntity> cartItems})
      : _cartItems = cartItems;

  final List<CartItemEntity> _cartItems;
  @override
  List<CartItemEntity> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.success(cartItems: $cartItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.success'))
      ..add(DiagnosticsProperty('cartItems', cartItems));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCartStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCartStateImplCopyWith<_$SuccessCartStateImpl> get copyWith =>
      __$$SuccessCartStateImplCopyWithImpl<_$SuccessCartStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) {
    return success(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) {
    return success?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessCartState implements CartState {
  const factory SuccessCartState(
      {required final List<CartItemEntity> cartItems}) = _$SuccessCartStateImpl;

  List<CartItemEntity> get cartItems;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCartStateImplCopyWith<_$SuccessCartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCartStateImplCopyWith<$Res> {
  factory _$$FailureCartStateImplCopyWith(_$FailureCartStateImpl value,
          $Res Function(_$FailureCartStateImpl) then) =
      __$$FailureCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureCartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureCartStateImpl>
    implements _$$FailureCartStateImplCopyWith<$Res> {
  __$$FailureCartStateImplCopyWithImpl(_$FailureCartStateImpl _value,
      $Res Function(_$FailureCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailureCartStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureCartStateImpl
    with DiagnosticableTreeMixin
    implements FailureCartState {
  const _$FailureCartStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.failure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.failure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureCartStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCartStateImplCopyWith<_$FailureCartStateImpl> get copyWith =>
      __$$FailureCartStateImplCopyWithImpl<_$FailureCartStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureCartState implements CartState {
  const factory FailureCartState({required final String errorMessage}) =
      _$FailureCartStateImpl;

  String get errorMessage;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureCartStateImplCopyWith<_$FailureCartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemAddedStateImplCopyWith<$Res> {
  factory _$$CartItemAddedStateImplCopyWith(_$CartItemAddedStateImpl value,
          $Res Function(_$CartItemAddedStateImpl) then) =
      __$$CartItemAddedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartItemAddedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartItemAddedStateImpl>
    implements _$$CartItemAddedStateImplCopyWith<$Res> {
  __$$CartItemAddedStateImplCopyWithImpl(_$CartItemAddedStateImpl _value,
      $Res Function(_$CartItemAddedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartItemAddedStateImpl
    with DiagnosticableTreeMixin
    implements CartItemAddedState {
  const _$CartItemAddedStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.cartItemAdded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CartState.cartItemAdded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartItemAddedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) {
    return cartItemAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) {
    return cartItemAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
    required TResult orElse(),
  }) {
    if (cartItemAdded != null) {
      return cartItemAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) {
    return cartItemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) {
    return cartItemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) {
    if (cartItemAdded != null) {
      return cartItemAdded(this);
    }
    return orElse();
  }
}

abstract class CartItemAddedState implements CartState {
  const factory CartItemAddedState() = _$CartItemAddedStateImpl;
}

/// @nodoc
abstract class _$$CartItemRemovedStateImplCopyWith<$Res> {
  factory _$$CartItemRemovedStateImplCopyWith(_$CartItemRemovedStateImpl value,
          $Res Function(_$CartItemRemovedStateImpl) then) =
      __$$CartItemRemovedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartItemRemovedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartItemRemovedStateImpl>
    implements _$$CartItemRemovedStateImplCopyWith<$Res> {
  __$$CartItemRemovedStateImplCopyWithImpl(_$CartItemRemovedStateImpl _value,
      $Res Function(_$CartItemRemovedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartItemRemovedStateImpl
    with DiagnosticableTreeMixin
    implements CartItemRemovedState {
  const _$CartItemRemovedStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.cartItemRemoved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CartState.cartItemRemoved'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemRemovedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) {
    return cartItemRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) {
    return cartItemRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
    required TResult orElse(),
  }) {
    if (cartItemRemoved != null) {
      return cartItemRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) {
    return cartItemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) {
    return cartItemRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) {
    if (cartItemRemoved != null) {
      return cartItemRemoved(this);
    }
    return orElse();
  }
}

abstract class CartItemRemovedState implements CartState {
  const factory CartItemRemovedState() = _$CartItemRemovedStateImpl;
}

/// @nodoc
abstract class _$$UpdatedCartStateImplCopyWith<$Res> {
  factory _$$UpdatedCartStateImplCopyWith(_$UpdatedCartStateImpl value,
          $Res Function(_$UpdatedCartStateImpl) then) =
      __$$UpdatedCartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedCartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$UpdatedCartStateImpl>
    implements _$$UpdatedCartStateImplCopyWith<$Res> {
  __$$UpdatedCartStateImplCopyWithImpl(_$UpdatedCartStateImpl _value,
      $Res Function(_$UpdatedCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatedCartStateImpl
    with DiagnosticableTreeMixin
    implements UpdatedCartState {
  const _$UpdatedCartStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.updatedCart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CartState.updatedCart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedCartStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartItemEntity> cartItems) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function() cartItemAdded,
    required TResult Function() cartItemRemoved,
    required TResult Function() updatedCart,
  }) {
    return updatedCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartItemEntity> cartItems)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function()? cartItemAdded,
    TResult? Function()? cartItemRemoved,
    TResult? Function()? updatedCart,
  }) {
    return updatedCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartItemEntity> cartItems)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function()? cartItemAdded,
    TResult Function()? cartItemRemoved,
    TResult Function()? updatedCart,
    required TResult orElse(),
  }) {
    if (updatedCart != null) {
      return updatedCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCartState value) initial,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(SuccessCartState value) success,
    required TResult Function(FailureCartState value) failure,
    required TResult Function(CartItemAddedState value) cartItemAdded,
    required TResult Function(CartItemRemovedState value) cartItemRemoved,
    required TResult Function(UpdatedCartState value) updatedCart,
  }) {
    return updatedCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCartState value)? initial,
    TResult? Function(LoadingCartState value)? loading,
    TResult? Function(SuccessCartState value)? success,
    TResult? Function(FailureCartState value)? failure,
    TResult? Function(CartItemAddedState value)? cartItemAdded,
    TResult? Function(CartItemRemovedState value)? cartItemRemoved,
    TResult? Function(UpdatedCartState value)? updatedCart,
  }) {
    return updatedCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCartState value)? initial,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(SuccessCartState value)? success,
    TResult Function(FailureCartState value)? failure,
    TResult Function(CartItemAddedState value)? cartItemAdded,
    TResult Function(CartItemRemovedState value)? cartItemRemoved,
    TResult Function(UpdatedCartState value)? updatedCart,
    required TResult orElse(),
  }) {
    if (updatedCart != null) {
      return updatedCart(this);
    }
    return orElse();
  }
}

abstract class UpdatedCartState implements CartState {
  const factory UpdatedCartState() = _$UpdatedCartStateImpl;
}
