import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChecked});

  final bool isChecked;
  final ValueChanged<bool> onChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChecked(!isChecked),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 24,
        height: 24,
        padding: isChecked ? const EdgeInsets.all(2) : EdgeInsets.zero,
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.greenColor : AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.5, color: isChecked ? AppColors.greenColor : AppColors.platinumGreyColor),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        child: isChecked
            ? SvgPicture.asset(
                AppImagesAssets.imagesCheck,
              )
            : null,
      ),
    );
  }
}
