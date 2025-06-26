import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.silverGreyColor,
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'نسيت كلمة المرور؟',
                style: AppTextStyles.font13AccentGreenSemiBold,
              ),
            ),
            SizedBox(height: 33),
            CustomButton(
              title: 'تسجيل دخول',
              onPressed: () {},
            ),
            SizedBox(height: 24),
            DontHaveAnAccountWidget(),
            SizedBox(height: 33),
            OrDivider(),
          ],
        ),
      ),
    );
  }
}
