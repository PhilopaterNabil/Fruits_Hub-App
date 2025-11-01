import 'package:fruits_hub/features/Home/domain/entites/cart_entity.dart';
import 'package:fruits_hub/features/checkout/domain/entites/shipping_address_entity.dart';

class OrderEntity {
  final CartEntity cartIentity;
  final bool? payWithCash;
  ShippingAddressEntity shippingAddress;

  OrderEntity({
    required this.cartIentity,
    this.payWithCash,
    required this.shippingAddress,
  });
}
