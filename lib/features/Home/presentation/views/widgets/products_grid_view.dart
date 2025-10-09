import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.products});

  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 163 / 214,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => FruitItem(productEntity: products[index]),
    );
  }
}
