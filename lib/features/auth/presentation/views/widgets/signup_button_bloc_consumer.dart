import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/build_error_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/managers/signup_cubit/signup_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupButtonBlocConsumer extends StatelessWidget {
  const SignupButtonBlocConsumer({
    super.key,
    required this.formKey

  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (user) => log('✅ Account created successfully: $user'),
          failure: (message) => buildErrorBar(context, message),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return SizedBox(
          height: 54,
          child: ModalProgressHUD(
            inAsyncCall: state is SignupLoading,
            child: CustomButton(
              onPressed: () => context.read<SignupCubit>().submitForm(formKey),
              title: 'إنشاء حساب جديد',
            ),
          ),
        );
      },
    );
  }
}
