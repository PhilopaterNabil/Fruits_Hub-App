// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderInitial value) initial,
    required TResult Function(_OrderLoading value) loading,
    required TResult Function(_OrderSuccess value) success,
    required TResult Function(_OrderFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitial value)? initial,
    TResult? Function(_OrderLoading value)? loading,
    TResult? Function(_OrderSuccess value)? success,
    TResult? Function(_OrderFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitial value)? initial,
    TResult Function(_OrderLoading value)? loading,
    TResult Function(_OrderSuccess value)? success,
    TResult Function(_OrderFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrderStateCopyWith<$Res> {
  factory $AddOrderStateCopyWith(
          AddOrderState value, $Res Function(AddOrderState) then) =
      _$AddOrderStateCopyWithImpl<$Res, AddOrderState>;
}

/// @nodoc
class _$AddOrderStateCopyWithImpl<$Res, $Val extends AddOrderState>
    implements $AddOrderStateCopyWith<$Res> {
  _$AddOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OrderInitialImplCopyWith<$Res> {
  factory _$$OrderInitialImplCopyWith(
          _$OrderInitialImpl value, $Res Function(_$OrderInitialImpl) then) =
      __$$OrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderInitialImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$OrderInitialImpl>
    implements _$$OrderInitialImplCopyWith<$Res> {
  __$$OrderInitialImplCopyWithImpl(
      _$OrderInitialImpl _value, $Res Function(_$OrderInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderInitialImpl implements _OrderInitial {
  const _$OrderInitialImpl();

  @override
  String toString() {
    return 'AddOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(_OrderInitial value) initial,
    required TResult Function(_OrderLoading value) loading,
    required TResult Function(_OrderSuccess value) success,
    required TResult Function(_OrderFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitial value)? initial,
    TResult? Function(_OrderLoading value)? loading,
    TResult? Function(_OrderSuccess value)? success,
    TResult? Function(_OrderFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitial value)? initial,
    TResult Function(_OrderLoading value)? loading,
    TResult Function(_OrderSuccess value)? success,
    TResult Function(_OrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OrderInitial implements AddOrderState {
  const factory _OrderInitial() = _$OrderInitialImpl;
}

/// @nodoc
abstract class _$$OrderLoadingImplCopyWith<$Res> {
  factory _$$OrderLoadingImplCopyWith(
          _$OrderLoadingImpl value, $Res Function(_$OrderLoadingImpl) then) =
      __$$OrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderLoadingImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$OrderLoadingImpl>
    implements _$$OrderLoadingImplCopyWith<$Res> {
  __$$OrderLoadingImplCopyWithImpl(
      _$OrderLoadingImpl _value, $Res Function(_$OrderLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderLoadingImpl implements _OrderLoading {
  const _$OrderLoadingImpl();

  @override
  String toString() {
    return 'AddOrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(_OrderInitial value) initial,
    required TResult Function(_OrderLoading value) loading,
    required TResult Function(_OrderSuccess value) success,
    required TResult Function(_OrderFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitial value)? initial,
    TResult? Function(_OrderLoading value)? loading,
    TResult? Function(_OrderSuccess value)? success,
    TResult? Function(_OrderFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitial value)? initial,
    TResult Function(_OrderLoading value)? loading,
    TResult Function(_OrderSuccess value)? success,
    TResult Function(_OrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _OrderLoading implements AddOrderState {
  const factory _OrderLoading() = _$OrderLoadingImpl;
}

/// @nodoc
abstract class _$$OrderSuccessImplCopyWith<$Res> {
  factory _$$OrderSuccessImplCopyWith(
          _$OrderSuccessImpl value, $Res Function(_$OrderSuccessImpl) then) =
      __$$OrderSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderSuccessImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$OrderSuccessImpl>
    implements _$$OrderSuccessImplCopyWith<$Res> {
  __$$OrderSuccessImplCopyWithImpl(
      _$OrderSuccessImpl _value, $Res Function(_$OrderSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderSuccessImpl implements _OrderSuccess {
  const _$OrderSuccessImpl();

  @override
  String toString() {
    return 'AddOrderState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderInitial value) initial,
    required TResult Function(_OrderLoading value) loading,
    required TResult Function(_OrderSuccess value) success,
    required TResult Function(_OrderFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitial value)? initial,
    TResult? Function(_OrderLoading value)? loading,
    TResult? Function(_OrderSuccess value)? success,
    TResult? Function(_OrderFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitial value)? initial,
    TResult Function(_OrderLoading value)? loading,
    TResult Function(_OrderSuccess value)? success,
    TResult Function(_OrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _OrderSuccess implements AddOrderState {
  const factory _OrderSuccess() = _$OrderSuccessImpl;
}

/// @nodoc
abstract class _$$OrderFailureImplCopyWith<$Res> {
  factory _$$OrderFailureImplCopyWith(
          _$OrderFailureImpl value, $Res Function(_$OrderFailureImpl) then) =
      __$$OrderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$OrderFailureImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$OrderFailureImpl>
    implements _$$OrderFailureImplCopyWith<$Res> {
  __$$OrderFailureImplCopyWithImpl(
      _$OrderFailureImpl _value, $Res Function(_$OrderFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$OrderFailureImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderFailureImpl implements _OrderFailure {
  const _$OrderFailureImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AddOrderState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderFailureImplCopyWith<_$OrderFailureImpl> get copyWith =>
      __$$OrderFailureImplCopyWithImpl<_$OrderFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(_OrderInitial value) initial,
    required TResult Function(_OrderLoading value) loading,
    required TResult Function(_OrderSuccess value) success,
    required TResult Function(_OrderFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitial value)? initial,
    TResult? Function(_OrderLoading value)? loading,
    TResult? Function(_OrderSuccess value)? success,
    TResult? Function(_OrderFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitial value)? initial,
    TResult Function(_OrderLoading value)? loading,
    TResult Function(_OrderSuccess value)? success,
    TResult Function(_OrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _OrderFailure implements AddOrderState {
  const factory _OrderFailure({required final String errorMessage}) =
      _$OrderFailureImpl;

  String get errorMessage;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderFailureImplCopyWith<_$OrderFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
