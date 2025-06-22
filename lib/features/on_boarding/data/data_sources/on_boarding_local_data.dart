import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/features/on_boarding/data/models/on_boarding_model.dart';

final List<OnBoardingModel> onBoardingPages = [
  OnBoardingModel(
    imagePath: AppImagesAssets.imagesPageViewItem1Image,
    backgroundImagePath: AppImagesAssets.imagesPageViewItem1BackgroundImage,
    subTitle:
        'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('مرحبًا بك في'),
        Text('Fruit'),
        Text('HUB'),
      ],
    ),
  ),
  OnBoardingModel(
    imagePath: AppImagesAssets.imagesPageViewItem2Image,
    backgroundImagePath: AppImagesAssets.imagesPageViewItem2BackgroundImage,
    title: Text('ابحث وتسوق'),
    subTitle:
        'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
  ),
];
