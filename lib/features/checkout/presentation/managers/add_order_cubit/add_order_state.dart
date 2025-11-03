part of 'add_order_cubit.dart';

@freezed
class AddOrderState with _$AddOrderState {
  const factory AddOrderState.initial() = _OrderInitial;
  const factory AddOrderState.loading() = _OrderLoading;
  const factory AddOrderState.success() = _OrderSuccess;
  const factory AddOrderState.failure({required String errorMessage}) = _OrderFailure;
}
