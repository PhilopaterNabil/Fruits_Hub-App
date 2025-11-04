import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helper/show_bar.dart';
import 'package:fruits_hub/core/utils/app_keys.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/checkout/domain/entites/order_input_entity.dart';
import 'package:fruits_hub/features/checkout/domain/entites/paypal_payment_entity/lib/features/checkout/domain/entites/paypal_payment_entity/paypal_payment_entity.dart';
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
            onTap: (index) {
              if (index == currentPageIndex) return;
              if (index == 2) {
                final bool isValid = _formKey.currentState?.validate() ?? false;
                if (!isValid) {
                  // pageController.animateToPage(
                  //   1,
                  //   duration: const Duration(milliseconds: 300),
                  //   curve: Curves.easeInOut,
                  // );
                  autovalidateMode.value = AutovalidateMode.always;
                  return;
                }
                _formKey.currentState!.save();
              }

              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
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
    var orderEntity = context.read<OrderInputEntity>();
    PaypalPaymentEntity paypalPaymentEntity = PaypalPaymentEntity.fromEntity(orderEntity);

    var addOrderCubit = context.read<AddOrderCubit>();
    log('Paypal Payment Entity: ${paypalPaymentEntity.toJson().toString()}');
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: kPaypalClientId,
          secretKey: kPaypalSecretKey,
          transactions: [
            paypalPaymentEntity.toJson(),
          ],
          note: 'Thank you for your purchase!',
          onSuccess: (Map params) async {
            print("Payment Success: $params");
            context.pop();
            await addOrderCubit.addOrder(orderEntity: orderEntity);
            showBar(context, 'تم اتمام الدفع بنجاح');
          },
          onError: (error) {
            print("Payment Error: $error");
            context.pop();
            showBar(context, 'حدث خطأ اثناء عملية الدفع');
          },
          onCancel: () {
            print("Payment Cancelled");
            context.pop();
            showBar(context, 'تم الغاء عملية الدفع');
          },
        ),
      ),
    );
  }
}
