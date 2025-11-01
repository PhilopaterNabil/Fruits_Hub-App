import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  ValueNotifier<AutovalidateMode> autovalidateMode =
      ValueNotifier<AutovalidateMode>(AutovalidateMode.disabled);

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    autovalidateMode.dispose();
    super.dispose();
  }

  int currentPageIndex = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 16.h),
          CheckoutSteps(
            currentPageIndex: currentPageIndex,
            pageController: pageController,
            formKey: _formKey,
            autovalidateMode: autovalidateMode,
          ),
          Expanded(
            child: CheckoutStepsPageView(
              pageController: pageController,
              formKey: _formKey,
              autovalidateMode: autovalidateMode,
            ),
          ),
          CustomButton(
            onPressed: () {
              if (currentPageIndex == 1) {
                if (!_formKey.currentState!.validate()) {
                  autovalidateMode.value = AutovalidateMode.always;
                  return;
                }
                _formKey.currentState!.save();
              }
              if (currentPageIndex == checkoutStepsTitles.length - 1) {
                return;
              }
              pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.bounceIn,
              );
            },
            title: currentPageIndex == checkoutStepsTitles.length - 1 ? 'تأكيد الطلب' : 'التالي',
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
