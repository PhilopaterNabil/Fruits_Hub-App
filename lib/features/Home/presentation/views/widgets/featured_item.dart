import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(AppImagesAssets.imagesWatermelonTest),
          Container(
            child: Column(
              children: [
                Text(
                  'عروض العيد',
                  style: AppTextStyles.font13LightGreyRegular.copyWith(color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'خصم 25%',
                  style: AppTextStyles.font19BlackBold.copyWith(color: Colors.white),
                ),
                SizedBox(height: 7),
                FeaturedItemButton(
                  title: 'تسوق الآن',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
