import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/repos/products_repo/products_repo.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(ProductsState.initial());

  final ProductsRepo productRepo;

  Future<void> getProducts() async {
    emit(ProductsState.loading());
    final result = await productRepo.getProducts();
    result.fold(
      (failure) => emit(ProductsState.failure(failure.message)),
      (products) => emit(ProductsState.success(products)),
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsState.loading());
    final result = await productRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProductsState.failure(failure.message)),
      (products) => emit(ProductsState.success(products)),
    );
  }
}
