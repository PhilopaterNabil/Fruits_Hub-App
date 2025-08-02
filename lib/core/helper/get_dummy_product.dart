import 'package:fruits_hub/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Apple',
    code: 'AP123',
    description: 'A delicious red apple fresh from the orchard.',
    price: 1.99,
    isFeatured: true,
    imageUrl: null,
    // imageUrl: 'https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg',
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
