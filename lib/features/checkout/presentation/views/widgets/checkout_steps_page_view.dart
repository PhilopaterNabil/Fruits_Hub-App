import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/shipping_section.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        itemCount: getStepsPages().length,
        itemBuilder: (context, index) => getStepsPages()[index],
      ),
    );
  }

  List<Widget> getStepsPages() {
    return [
      ShippingSection(),
      Center(child: Text('Address Step')),
      Center(child: Text('Payment Step')),
      Center(child: Text('Review Step')),
    ];
  }
}
