import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/managers/add_order_cubit/add_order_cubit.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_steps_page_view.dart';
import 'package:go_router/go_router.dart';

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
                _processPayment(context);
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

  void _processPayment(BuildContext context) {
    var orderEntity = context.read<OrderEntity>();
    context.read<AddOrderCubit>().addOrder(orderEntity: orderEntity);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: "AYJ2...your_client_id...X",
          secretKey: '',
          transactions: [],
          onSuccess: (result) {
            context.pop();
          },
          onError: (error) {
            context.pop();
          },
          onCancel: () {
            context.pop();
          },
        ),
      ),
    );
  }
}
