import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/show_error_bar.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub/features/auth/presentation/managers/login_cubit/login_cubit.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (user) {
            log('✅ Login successful: $user');
            context.pushReplacementTo(Routes.homeScreen);
          },
          failure: (message) => showErrorBar(context, message),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return SizedBox(
          height: 54,
          child: CustomProgressHud(
            isLoading: state is LoginLoading,
            child: CustomButton(
              title: 'تسجيل دخول',
              onPressed: onPressed,
            ),
          ),
        );
      },
    );
  }
}
