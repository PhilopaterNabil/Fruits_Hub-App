import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: AppColors.platinumGreyColor),
        ),
        SizedBox(height: 18),
        Text(
          'أو',
          style: AppTextStyles.font16GreySemiBold.copyWith(color: AppColors.blackColor),
        ),
        SizedBox(height: 18),
        Expanded(
          child: Divider(color: AppColors.platinumGreyColor),
        ),
      ],
    );
  }
}
