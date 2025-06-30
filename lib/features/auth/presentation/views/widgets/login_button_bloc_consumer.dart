import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub/features/auth/presentation/managers/login_cubit/login_cubit.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is LoginLoading,
          child: CustomButton(
            title: 'تسجيل دخول',
            onPressed: () {},
          ),
        );
      },
    );
  }
}
