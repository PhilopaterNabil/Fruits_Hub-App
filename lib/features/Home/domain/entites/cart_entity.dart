import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/features/Home/domain/entites/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;

  CartEntity({required this.cartItems});

  void addCartItem(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }

  void removeCartItem(CartItemEntity cartItemEntity) {
    cartItems.remove(cartItemEntity);
  }

  bool isExists(ProductEntity productEntity) {
    for (var element in cartItems) {
      if (element.productEntity == productEntity) return true;
    }

    return false;
  }

  CartItemEntity getCartItem(ProductEntity productEntity) {
    for (var cartItem in cartItems) {
      if (cartItem.productEntity == productEntity) return cartItem;
    }

    return CartItemEntity(productEntity: productEntity, count: 1);
  }

  num get totalPrice => cartItems.fold(0, (sum, item) => sum + item.totalPrice);
}
