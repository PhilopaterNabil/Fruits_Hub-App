part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _ProductsInitial;
  const factory ProductsState.loading() = _ProductsLoading;
  const factory ProductsState.failure(String errMessage) = _ProductsFailure;
  const factory ProductsState.success(List<ProductEntity> products) = _ProductsSuccess;
}
