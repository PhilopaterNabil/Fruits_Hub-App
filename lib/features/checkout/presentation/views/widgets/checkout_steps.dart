import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/in_active_step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        checkoutStepsTitles.length,
        (index) => Expanded(
          child: InActiveStepItem(
            index: (index + 1).toString(),
            title: checkoutStepsTitles[index],
          ),
          // child: ActiveStepItem(
          //   title: checkoutStepsTitles[index],
          // ),
        ),
      ),
    );
  }
}

List<String> checkoutStepsTitles = [
  'الشحن',
  'العنوان',
  'الدفع',
  'المراجعه',
];
