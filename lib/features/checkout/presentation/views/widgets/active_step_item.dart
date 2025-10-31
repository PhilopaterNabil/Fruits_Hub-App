import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12.5.r,
          backgroundColor: AppColors.greenColor,
          child: Icon(
            Icons.check,
            color: AppColors.whiteColor,
            size: 18.sp,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          'الشحن',
          style: AppTextStyles.font13LightGreyBold.copyWith(color: AppColors.greenColor),
        )
      ],
    );
  }
}
