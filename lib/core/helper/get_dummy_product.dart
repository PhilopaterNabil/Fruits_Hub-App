import 'dart:io';

import 'package:fruits_hub/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Apple',
    code: 'AP123',
    description: 'A delicious red apple fresh from the orchard.',
    price: 1.99,
    image: File('path/to/dummy_image.png'),
    isFeatured: true,
    imageUrl: 'https://example.com/dummy_image.png',
    expirationsMonths: 12,
    isOrganic: true,
    numberOfCalories: 100,
    unitAmount: 1,
    reviews: [],
  );
}

List<ProductEntity> getDummyProductList(int count) {
  return List.generate(count, (index) => getDummyProduct());
}