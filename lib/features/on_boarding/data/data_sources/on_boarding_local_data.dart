import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/data/models/on_boarding_model.dart';

final List<OnBoardingModel> onBoardingPages = [
  OnBoardingModel(
    imagePath: AppImagesAssets.imagesPageViewItem1Image,
    backgroundImagePath: AppImagesAssets.imagesPageViewItem1BackgroundImage,
    subTitle:
        'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('مرحبًا بك في', style: AppTextStyles.font23BlackBold),
        Text(
          'HUB ',
          style: AppTextStyles.font23BlackBold.copyWith(color: AppColors.orangeColor),
        ),
        Text('Fruit', style: AppTextStyles.font23BlackBold),
      ],
    ),
  ),
  OnBoardingModel(
    imagePath: AppImagesAssets.imagesPageViewItem2Image,
    backgroundImagePath: AppImagesAssets.imagesPageViewItem2BackgroundImage,
    subTitle:
        'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
    title: Text('ابحث وتسوق', style: AppTextStyles.font23BlackBold),
  ),
];
