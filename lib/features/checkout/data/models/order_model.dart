import 'package:fruits_hub/features/checkout/data/models/order_product_model.dart';
import 'package:fruits_hub/features/checkout/data/models/shipping_address_model.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_entity.dart';

class OrderModel {
  final String uId;
  final double totalPrice;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;

  OrderModel({
    required this.uId,
    required this.totalPrice,
    required this.shippingAddressModel,
    required this.orderProducts,
    required this.paymentMethod,
  });

  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
      uId: orderEntity.uId,
      totalPrice: orderEntity.cartIEntity.totalPrice.toDouble(),
      shippingAddressModel: ShippingAddressModel.fromEntity(orderEntity.shippingAddress),
      orderProducts: orderEntity.cartIEntity.cartItems
          .map((cartItem) => OrderProductModel.fromEntity(cartItemEntity: cartItem))
          .toList(),
      paymentMethod: orderEntity.payWithCash == true ? 'Cash on Delivery' : 'Online Payment',
    );
  }

  toJson() {
    return {
      'uId': uId,
      'status': 'pending',
      'dateTime': DateTime.now().toIso8601String(),
      'totalPrice': totalPrice,
      'shippingAddress': shippingAddressModel.toJson(),
      'orderProducts': orderProducts.map((orderProduct) => orderProduct.toJson()).toList(),
      'paymentMethod': paymentMethod,
    };
  }
}
