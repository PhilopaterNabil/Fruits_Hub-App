import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ProductsViewHeaders extends StatelessWidget {
  const ProductsViewHeaders({super.key, required this.productsLength});

  final int productsLength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            '$productsLength نتائج',
            style: AppTextStyles.font16WhiteBold.copyWith(color: AppColors.blackColor),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: ShapeDecoration(
              color: AppColors.whiteColor.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: AppColors.pastelOliveColor.withOpacity(0.4),
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: SvgPicture.asset(AppImagesAssets.imagesFilter2),
          )
        ],
      ),
    );
  }
}
