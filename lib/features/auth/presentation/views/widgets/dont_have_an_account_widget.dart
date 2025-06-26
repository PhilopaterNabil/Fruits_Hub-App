import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: 'لا تمتلك حساب؟ ',
        style: AppTextStyles.font16GreySemiBold.copyWith(color: AppColors.lightGreyColor),
        children: [
          TextSpan(
            text: 'قم بإنشاء حساب',
            style: AppTextStyles.font16GreySemiBold.copyWith(color: AppColors.greenColor),
          ),
        ],
      ),
    );
  }
}
