import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_input_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key, required this.formKey, required this.autovalidateMode});

  final GlobalKey<FormState> formKey;
  final ValueNotifier<AutovalidateMode> autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: autovalidateMode,
        builder: (context, value, _) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              SizedBox(height: 24.h),
              CustomTextFormField(
                hintText: 'الاسم كامل',
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddress.name = value ?? '';
                },
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddress.email = value ?? '';
                },
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'العنوان',
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddress.address = value ?? '';
                },
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'رقم الهاتف',
                keyboardType: TextInputType.phone,
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddress.phoneNumber = value ?? '';
                },
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'المدينه',
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddress.city = value ?? '';
                },
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'رقم الطابق , رقم الشقه ..',
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddress.floorNumber = value ?? '';
                },
              ),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }
}
