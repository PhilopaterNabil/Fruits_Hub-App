import 'package:fruits_hub/core/utils/app_images_assets.dart';

class BottomNavigationBarEntity {
  final String activeIconPath, inActiveIconPath;
  final String name;

  const BottomNavigationBarEntity({
    required this.activeIconPath,
    required this.inActiveIconPath,
    required this.name,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
        activeIconPath: AppImagesAssets.imagesVuesaxBoldHome,
        inActiveIconPath: AppImagesAssets.imagesVuesaxOutlineHome,
        name: 'الرئيسية',
      ),
      BottomNavigationBarEntity(
        activeIconPath: AppImagesAssets.imagesVuesaxBoldProducts,
        inActiveIconPath: AppImagesAssets.imagesVuesaxOutlineProducts,
        name: 'المنتجات',
      ),
      BottomNavigationBarEntity(
        activeIconPath: AppImagesAssets.imagesVuesaxBoldShoppingCart,
        inActiveIconPath: AppImagesAssets.imagesVuesaxOutlineShoppingCart,
        name: 'سلة التسوق',
      ),
      BottomNavigationBarEntity(
        activeIconPath: AppImagesAssets.imagesVuesaxBoldUser,
        inActiveIconPath: AppImagesAssets.imagesVuesaxOutlineUser,
        name: 'حسابي',
      ),
    ];
