import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_steps.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: checkoutStepsTitles.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Center(
          child: Text(
            'Step ${index + 1}',
            style: TextStyle(fontSize: 24.sp),
          ),
        );
      },
    );
  }
}