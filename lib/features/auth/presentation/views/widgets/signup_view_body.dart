import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/auth_switch_prompt.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signup_button_bloc_consumer.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? userName, email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'الاسم كامل',
                keyboardType: TextInputType.name,
                onSaved: (value) => userName = value!,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => email = value!,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: 'كلمة المرور',
                keyboardType: TextInputType.visiblePassword,
                onSaved: (value) => password = value!,
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.silverGreyColor,
                ),
              ),
              const SizedBox(height: 16),
              const TermsAndConditions(),
              const SizedBox(height: 30),
              SignupButtonBlocConsumer(
                formKey: formKey,
                userName: userName ?? '',
                email: email ?? '',
                password: password ?? '',
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
      ),
    );
  }
}
