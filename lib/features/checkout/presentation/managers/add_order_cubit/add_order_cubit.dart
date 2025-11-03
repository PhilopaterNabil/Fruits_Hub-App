import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_entity.dart';

part 'add_order_cubit.freezed.dart';
part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this._ordersRepo) : super(AddOrderState.initial());

  final OrdersRepo _ordersRepo;

  Future<void> addOrder({required OrderEntity orderEntity}) async {
    emit(AddOrderState.loading());
    final result = await _ordersRepo.addOrder(orderEntity: orderEntity);

    result.fold(
      (failure) => emit(AddOrderState.failure(errorMessage: failure.message)),
      (_) => emit(AddOrderState.success()),
    );
  }
}
