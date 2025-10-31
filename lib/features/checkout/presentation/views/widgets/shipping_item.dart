import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/active_or_in_active_shipping_item_dot.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.isSelected,
    required this.onTap,
  });

  final String title, subTitle, price;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColors.translucentGreyColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? AppColors.greenColor : AppColors.translucentGreyColor,
            width: 1.5.w,
          ),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActiveOrInActiveShippingItemDot(isSelected: isSelected),
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
              SizedBox(width: 9.w),
            ],
          ),
        ),
      ),
    );
  }
}
