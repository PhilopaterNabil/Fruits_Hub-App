import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/features/Home/domain/entites/cart_entity.dart';
import 'package:fruits_hub/features/Home/domain/entites/cart_item_entity.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  CartEntity cartEntity = CartEntity(cartItems: []);

  void addProductToCart(ProductEntity productEntity) {
    bool isProductExists = cartEntity.isExists(productEntity);

    var existingCartItem = cartEntity.getCartItem(productEntity);

    if (isProductExists) {
      existingCartItem.incrementCount();
      // _updateProductInCart(productEntity);
    } else {
      _addNewProductToCart(productEntity);
    }

    emit(CartState.cartItemAdded());
  }

  void _addNewProductToCart(ProductEntity productEntity) {
    CartItemEntity cartItemEntity = CartItemEntity(productEntity: productEntity, count: 1);

    cartEntity.addCartItem(cartItemEntity);
    emit(CartState.cartItemAdded());
  }

  void deleteCartItem(CartItemEntity cartItemEntity) {
    cartEntity.removeCartItem(cartItemEntity);
    emit(CartState.cartItemRemoved());
  }
}
