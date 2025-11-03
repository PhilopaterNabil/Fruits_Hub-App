import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/show_bar.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_item_cubit/cart_item_cubit.dart';
import 'package:go_router/go_router.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            if (context.read<CartCubit>().cartEntity.cartItems.isNotEmpty) {
              context.push(Routes.checkoutScreen, extra: context.read<CartCubit>().cartEntity);
            } else {
              showBar(context, 'السلة فارغة! الرجاء إضافة منتجات قبل المتابعة.');
            }
          },
          title: 'الدفع  ${context.watch<CartCubit>().cartEntity.totalPrice} جنيه',
        );
      },
    );
  }
}
