import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({super.key, required this.title, required this.subTitle, required this.price});

  final String title, subTitle, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.translucentGreyColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 18.w,
              height: 18.h,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(color: AppColors.lightGreyColor),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.font13AccentGreenSemiBold.copyWith(
                    color: AppColors.darkBlackColor,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  subTitle,
                  style: AppTextStyles.font13LightGreyRegular.copyWith(
                    color: AppColors.darkBlackColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                price == '0' ? 'مجاني' : '$price جنيه',
                style: AppTextStyles.font13LightGreyBold.copyWith(
                  color: AppColors.leafGreenColor,
                ),
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
      ),
    );
  }
}
