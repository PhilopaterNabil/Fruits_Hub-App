import 'package:fruits_hub/features/Home/domain/entites/cart_entity.dart';
import 'package:fruits_hub/features/checkout/domain/entites/shipping_address_entity.dart';

class OrderEntity {
  final String uId;
  final CartEntity cartIEntity;
  final bool? payWithCash;
  ShippingAddressEntity shippingAddress;

  OrderEntity({
    required this.uId,
    required this.cartIEntity,
    this.payWithCash,
    required this.shippingAddress,
  });

  double calculateShippingCost() {
    if (payWithCash == true) {
      return cartIEntity.totalPrice * 1.1 - cartIEntity.totalPrice;
    } else {
      return 0;
    }
  }

  double calculateShippingDiscount() {
    return 0;
  }

  double calculateTotalPriceAfterDiscountAndShipping() {
    return cartIEntity.totalPrice + calculateShippingCost() - calculateShippingDiscount();
  }
}
