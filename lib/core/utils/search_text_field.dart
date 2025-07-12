import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: AppColors.darkBlackColor.withOpacity(0.04),
          blurRadius: 9,
          spreadRadius: 0,
          offset: const Offset(0, 2),
        ),
      ]),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'ابحث عن.......',
          hintStyle: AppTextStyles.font13LightGreyRegular,
          prefixIcon: SizedBox(
            width: 20,
            child: Center(
              child: SvgPicture.asset(AppImagesAssets.imagesSearchIcon),
            ),
          ),
          suffixIcon: SizedBox(
            width: 20,
            child: Center(
              child: SvgPicture.asset(AppImagesAssets.imagesFilter),
            ),
          ),
          filled: true,
          fillColor: AppColors.whiteColor,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.whiteColor,
      ),
    );
  }
}
