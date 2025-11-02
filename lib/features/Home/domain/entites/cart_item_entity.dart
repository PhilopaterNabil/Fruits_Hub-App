import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({
    required this.productEntity,
    this.quantity = 0,
  });

  num get totalPrice => productEntity.price * quantity;
  num get totalWeight => productEntity.unitAmount * quantity;

  void incrementQuantity() {
    quantity++;
  }

  void decrementQuantity() {
    if (quantity > 0) {
      quantity--;
    }
  }

  @override
  List<Object?> get props => [productEntity];
}
