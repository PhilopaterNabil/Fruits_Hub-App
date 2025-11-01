import 'package:fruits_hub/features/Home/domain/entites/cart_entity.dart';
import 'package:fruits_hub/features/checkout/domain/entites/shipping_address_entity.dart';

class OrderEntity {
  final CartEntity cartItems;
  final bool? payWithCash;
  ShippingAddressEntity shippingAddress;

  OrderEntity({
    required this.cartItems,
    this.payWithCash,
    required this.shippingAddress,
  });
}
