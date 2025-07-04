import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/managers/signup_cubit/signup_cubit.dart';
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

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignupCubit>();

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
                onSaved: (value) => cubit.updateUserName(value!),
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => cubit.updateEmail(value!),
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (value) => cubit.updatePassword(value!),
              ),
              const SizedBox(height: 16),
              TermsAndConditions(
                onChanged: (value) => cubit.toggleTerms(value),
              ),
              const SizedBox(height: 30),
              SignupButtonBlocConsumer(formKey: formKey),
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
