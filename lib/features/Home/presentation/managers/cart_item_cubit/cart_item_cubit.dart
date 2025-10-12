import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/features/Home/domain/entites/cart_item_entity.dart';

part 'cart_item_cubit.freezed.dart';
part 'cart_item_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit() : super(CartItemState.initial());

  void updateCartItem(CartItemEntity cartItemEntity) {
    emit(CartItemState.updated(cartItemEntity));
  }
}
