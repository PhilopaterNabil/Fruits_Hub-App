import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/managers/login_cubit/login_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/auth_switch_prompt.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/login_button_bloc_consumer.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? email, password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
              LoginButtonBlocConsumer(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    context
                        .read<LoginCubit>()
                        .signInWithEmailAndPassword(email: email!, password: password!);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              SizedBox(height: 26),
              AuthSwitchPrompt(
                question: 'لا تمتلك حساب؟ ',
                actionText: 'قم بإنشاء حساب',
                onActionTap: () => context.pushReplacementTo(Routes.signupScreen),
              ),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 21),
              SocialLoginButton(
                onPressed: () {},
                image: AppImagesAssets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                image: AppImagesAssets.imagesApplIcon,
                title: 'تسجيل بواسطة أبل',
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                image: AppImagesAssets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
