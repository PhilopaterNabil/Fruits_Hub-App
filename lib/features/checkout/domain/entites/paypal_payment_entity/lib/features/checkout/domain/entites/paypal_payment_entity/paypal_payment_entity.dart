import 'package:fruits_hub/features/checkout/domain/entites/order_input_entity.dart';
import 'package:fruits_hub/features/checkout/domain/entites/paypal_payment_entity/amount.dart';
import 'package:fruits_hub/features/checkout/domain/entites/paypal_payment_entity/item_list.dart';


class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  factory PaypalPaymentEntity.fromEntity(OrderInputEntity entity) {
    return PaypalPaymentEntity(
      amount: Amount.fromEntity(entity),
      description: 'Payment description',
      itemList: ItemList.fromEntity(items: entity.cartIEntity.cartItems),
    );
  }

  toJson() => {
        'amount': amount?.toJson(),
        'description': description,
        'item_list': itemList?.toJson(),
      };
}