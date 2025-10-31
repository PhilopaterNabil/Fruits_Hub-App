import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

abstract class AppDecorations {
  static var greyBoxDecoration = BoxDecoration(
    color: AppColors.translucentGreyColor.withOpacity(0.2),
    borderRadius: BorderRadius.circular(8.r),
    border: Border.all(
      color: AppColors.translucentGreyColor,
      width: 1.5.w,
    ),
  );
}
