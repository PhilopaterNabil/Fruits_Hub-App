import 'package:fruits_hub/features/Home/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/features/checkout/domain/entites/shipping_address_entity.dart';

class OrderEntity {
  final List<CartItemEntity> cartItems;
  final bool payWithCash;
  final ShippingAddressEntity shippingAddress;

  const OrderEntity({
    required this.cartItems,
    required this.payWithCash,
    required this.shippingAddress,
  });
}
