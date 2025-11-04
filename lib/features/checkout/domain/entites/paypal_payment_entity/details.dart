import 'package:fruits_hub/features/checkout/domain/entites/order_input_entity.dart';

class DetailsEntity {
  String? subtotal;
  String? shipping;
  double? shippingDiscount;

  DetailsEntity({this.subtotal, this.shipping, this.shippingDiscount});

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };

  factory DetailsEntity.fromEntity(OrderInputEntity entity) => DetailsEntity(
        subtotal: entity.cartIEntity.totalPrice.toString(),
        shipping: entity.calculateShippingCost().toString(),
        shippingDiscount: entity.calculateShippingDiscount(),
      );
}
