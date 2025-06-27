import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/auth_switch_prompt.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.silverGreyColor,
              ),
            ),
            const SizedBox(height: 16),
            const TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              title: 'إنشاء حساب جديد',
            ),
            const SizedBox(height: 26),
            AuthSwitchPrompt(
              question: 'تمتلك حساب بالفعل؟ ',
              actionText: 'تسجيل دخول',
              onActionTap: () => context.pushReplacementTo(Routes.loginScreen),
            ),
          ],
        ),
      ),
    );
  }
}
