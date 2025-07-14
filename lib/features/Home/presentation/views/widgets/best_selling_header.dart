import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الأكثر مبيعًا',
          style: AppTextStyles.font16WhiteBold.copyWith(color: AppColors.blackColor),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'المزيد',
            style: AppTextStyles.font13LightGreyRegular,
          ),
        ),
      ],
    );
  }
}