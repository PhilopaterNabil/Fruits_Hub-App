import 'package:flutter/material.dart';
import 'package:fruits_hub/features/Home/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.cartItems});

  final List<CartItemEntity> cartItems;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: cartItems.length,
      separatorBuilder: (context, index) => SizedBox(height: 16),
      itemBuilder: (context, index) => CartItem(cartItemEntity: cartItems[index]),
    );
  }
}
