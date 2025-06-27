import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class AuthSwitchPrompt extends StatelessWidget {
  const AuthSwitchPrompt(
      {super.key, required this.question, required this.actionText, required this.onActionTap});

  final String question, actionText;
  final void Function() onActionTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: question,
        style: AppTextStyles.font16GreySemiBold.copyWith(color: AppColors.lightGreyColor),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onActionTap,
            text: actionText,
            style: AppTextStyles.font16GreySemiBold.copyWith(color: AppColors.greenColor),
          ),
        ],
      ),
    );
  }
}
