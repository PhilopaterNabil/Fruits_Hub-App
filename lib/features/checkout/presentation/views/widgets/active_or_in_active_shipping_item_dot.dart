import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class ActiveOrInActiveShippingItemDot extends StatelessWidget {
  const ActiveOrInActiveShippingItemDot({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.w,
      height: 18.h,
      decoration: ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(color: AppColors.lightGreyColor),
        ),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
