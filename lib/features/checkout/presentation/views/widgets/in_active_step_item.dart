import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.index, required this.title});

  final String index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 10.r,
          backgroundColor: AppColors.veryLightGreyColor,
          child: Text(
            index,
            style: AppTextStyles.font13AccentGreenSemiBold.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          title,
          style: AppTextStyles.font13AccentGreenSemiBold.copyWith(
            color: AppColors.neutralGreyColor,
          ),
        ),
      ],
    );
  }
}
