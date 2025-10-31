import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/payment_item.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'ملخص الطلب :',
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 15.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'المجموع الفرعي :',
                  style: AppTextStyles.font13LightGreyRegular.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                Spacer(),
                Text(
                  '150 جنيه',
                  style: AppTextStyles.font16GreySemiBold.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  'التوصيل  :',
                  style: AppTextStyles.font13LightGreyRegular.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                Spacer(),
                Text(
                  '30 جنيه',
                  style: AppTextStyles.font13AccentGreenSemiBold.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(width: 16.w),
              ],
            ),
            Divider(
              color: AppColors.lightGreyColor,
              thickness: 0.5.w,
              height: 32.h,
              indent: 28.w,
              endIndent: 28.w,
            ),
            Row(
              children: [
                Text(
                  'المجموع الكلي :',
                  style: AppTextStyles.font16WhiteBold.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                Spacer(),
                Text(
                  '150 جنيه',
                  style: AppTextStyles.font16WhiteBold.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
