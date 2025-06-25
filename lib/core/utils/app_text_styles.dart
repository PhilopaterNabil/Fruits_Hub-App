import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/font_manager.dart';

abstract class AppTextStyles {
  static TextStyle bold13 = TextStyle(
    fontSize: FontSizeManager.s13,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle font23BlackBold = TextStyle(
    fontSize: FontSizeManager.s23,
    color: AppColors.blackColor,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle semiBold13 = TextStyle(
    fontSize: FontSizeManager.s13,
    fontWeight: FontWeightManager.semiBold,
  );

  static TextStyle font13LightGreyRegular = TextStyle(
    fontSize: FontSizeManager.s13,
    color: AppColors.lightGreyColor,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle bold16 = TextStyle(
    fontSize: FontSizeManager.s16,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle bold19 = TextStyle(
    fontSize: FontSizeManager.s19,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle font16GreySemiBold = TextStyle(
    fontSize: FontSizeManager.s16,
    color: AppColors.greyColor,
    fontWeight: FontWeightManager.semiBold,
  );

  static TextStyle font16WhiteBold = TextStyle(
    fontSize: FontSizeManager.s16,
    color: AppColors.whiteColor,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle bold28 = TextStyle(
    fontSize: FontSizeManager.s28,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle regular22 = TextStyle(
    fontSize: FontSizeManager.s22,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle semiBold11 = TextStyle(
    fontSize: FontSizeManager.s11,
    fontWeight: FontWeightManager.semiBold,
  );

  static TextStyle medium15 = TextStyle(
    fontSize: FontSizeManager.s15,
    fontWeight: FontWeightManager.medium,
  );

  static TextStyle regular26 = TextStyle(
    fontSize: FontSizeManager.s26,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle regular16 = TextStyle(
    fontSize: FontSizeManager.s16,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle regular11 = TextStyle(
    fontSize: FontSizeManager.s11,
    fontWeight: FontWeightManager.regular,
  );
}
