import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_steps.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CheckoutSteps(),
        ],
      ),
    );
  }
}
