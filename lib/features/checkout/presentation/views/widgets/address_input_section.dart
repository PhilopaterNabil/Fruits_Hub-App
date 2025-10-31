import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24.h),
          CustomTextFormField(hintText: 'الاسم كامل', keyboardType: TextInputType.text),
          SizedBox(height: 8.h),
          CustomTextFormField(
              hintText: 'البريد الإلكتروني', keyboardType: TextInputType.emailAddress),
          SizedBox(height: 8.h),
          CustomTextFormField(hintText: 'العنوان', keyboardType: TextInputType.text),
          SizedBox(height: 8.h),
          CustomTextFormField(hintText: 'رقم الهاتف', keyboardType: TextInputType.phone),
          SizedBox(height: 8.h),
          CustomTextFormField(hintText: 'المدينه', keyboardType: TextInputType.text),
          SizedBox(height: 8.h),
          CustomTextFormField(
              hintText: 'رقم الطابق , رقم الشقه ..', keyboardType: TextInputType.number),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
