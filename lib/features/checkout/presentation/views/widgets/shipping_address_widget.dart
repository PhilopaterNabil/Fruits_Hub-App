import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_input_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/payment_item.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({
    super.key,
    required this.pageController,
  });

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'عنوان التوصيل',
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),
        child: Row(
          children: [
            SvgPicture.asset(AppImagesAssets.imagesLocation),
            SizedBox(width: 8.w),
            Text(
              context.read<OrderInputEntity>().shippingAddress.fullAddress,
              style: AppTextStyles.font16LightGreyRegular.copyWith(
                color: AppColors.greyColor,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => pageController.animateToPage(1,
                  duration: const Duration(milliseconds: 300), curve: Curves.easeIn),
              child: SizedBox(
                child: Row(
                  children: [
                    SvgPicture.asset(AppImagesAssets.imagesEdit),
                    SizedBox(width: 4.w),
                    Text(
                      'تعديل',
                      style: AppTextStyles.font13AccentGreenSemiBold.copyWith(
                        color: AppColors.lightGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
