import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.onSaved});

  final void Function(String?) onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscureText,
      onSaved: widget.onSaved,
      suffixIcon: IconButton(
        onPressed: () => setState(() => obscureText = !obscureText),
        icon: Icon(
          obscureText ? Icons.remove_red_eye_outlined : Icons.visibility_off_outlined,
          color: AppColors.silverGreyColor,
        ),
      ),
    );
  }
}
