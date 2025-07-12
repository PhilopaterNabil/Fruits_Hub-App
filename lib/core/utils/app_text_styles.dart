import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/font_manager.dart';

abstract class AppTextStyles {
  static TextStyle font11BlackRegular = TextStyle(
    fontSize: FontSizeManager.s11,
    color: AppColors.blackColor, // This Color is Default in the Text Style
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font13LightGreyRegular = TextStyle(
    fontSize: FontSizeManager.s13,
    color: AppColors.lightGreyColor,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font16LightGreyRegular = TextStyle(
    fontSize: FontSizeManager.s16,
    color: AppColors.lightGreyColor,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font22BlackRegular = TextStyle(
    fontSize: FontSizeManager.s22,
    color: AppColors.blackColor, // This Color is Default in the Text Style
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font26BlackRegular = TextStyle(
    fontSize: FontSizeManager.s26,
    color: AppColors.blackColor, // This Color is Default in the Text Style
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font15BlackMedium = TextStyle(
    fontSize: FontSizeManager.s15,
    color: AppColors.blackColor, // This Color is Default in the Text Style
    fontWeight: FontWeightManager.medium,
  );

  static TextStyle font11BlackSemiBold = TextStyle(
    fontSize: FontSizeManager.s11,
    color: AppColors.blackColor, // This Color is Default in the Text Style
    fontWeight: FontWeightManager.semiBold,
  );

  static TextStyle font13AccentGreenSemiBold = TextStyle(
    fontSize: FontSizeManager.s13,
    color: AppColors.accentGreenColor,
    fontWeight: FontWeightManager.semiBold,
  );

  static TextStyle font16GreySemiBold = TextStyle(
    fontSize: FontSizeManager.s16,
    color: AppColors.greyColor,
    fontWeight: FontWeightManager.semiBold,
  );

  static TextStyle font13LightGreyBold = TextStyle(
    fontSize: FontSizeManager.s13,
    color: AppColors.lightGreyColor,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle font16WhiteBold = TextStyle(
    fontSize: FontSizeManager.s16,
    color: AppColors.whiteColor,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle font19BlackBold = TextStyle(
    fontSize: FontSizeManager.s19,
    color: AppColors.blackColor,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle font23BlackBold = TextStyle(
    fontSize: FontSizeManager.s23,
    color: AppColors.blackColor,
    fontWeight: FontWeightManager.bold,
  );

  static TextStyle font28WhiteBold = TextStyle(
    fontSize: FontSizeManager.s28,
    color: AppColors.whiteColor, // This Color is Default in the Text Style
    fontWeight: FontWeightManager.bold,
  );
}
