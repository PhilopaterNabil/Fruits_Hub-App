import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/build_error_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/managers/signup_cubit/signup_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupButtonBlocConsumer extends StatelessWidget {
  const SignupButtonBlocConsumer({
    super.key,
    required this.formKey,
    required this.userName,
    required this.email,
    required this.password,
  });

  final GlobalKey<FormState> formKey;
  final String userName, email, password;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (user) => print(user),
          failure: (message) => buildErrorBar(context, message),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading,
          child: CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                context.read<SignupCubit>().createUserWithEmailAndPassword(
                      name: userName,
                      email: email,
                      password: password,
                    );
              }
            },
            title: 'إنشاء حساب جديد',
          ),
        );
      },
    );
  }
}
