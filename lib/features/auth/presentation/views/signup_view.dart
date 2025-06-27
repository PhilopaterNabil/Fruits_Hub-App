import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'حساب جديد',
        onPressed: () => context.pushReplacementTo(Routes.loginScreen),
      ),
      body: SignupViewBody(),
    );
  }
}
