import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
    required this.onTap,
  });

  final int currentPageIndex;
  final PageController pageController;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        checkoutStepsTitles.length,
        (index) => Expanded(
          child: GestureDetector(
            onTap: () => onTap(index),
            //  () {
            //   if (index == currentPageIndex) return;
            //   if (index == 2) {
            //     final bool isValid = formKey.currentState?.validate() ?? false;
            //     autovalidateMode.value = AutovalidateMode.always;
            //     formKey.currentState?.save();
            //     if (!isValid) {
            //       pageController.animateToPage(
            //         1,
            //         duration: const Duration(milliseconds: 300),
            //         curve: Curves.easeInOut,
            //       );
            //       return;
            //     }
            //   }

            //   pageController.animateToPage(
            //     index,
            //     duration: const Duration(milliseconds: 300),
            //     curve: Curves.easeInOut,
            //   );
            // },
            child: StepItem(
              isActive: index <= currentPageIndex,
              index: (index + 1).toString(),
              title: checkoutStepsTitles[index],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> checkoutStepsTitles = [
  'الشحن',
  'العنوان',
  'الدفع',
];
