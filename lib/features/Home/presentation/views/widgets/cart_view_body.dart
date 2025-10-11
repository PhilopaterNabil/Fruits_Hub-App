import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_items_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 16),
            CustomAppBar(
              title: 'السلة',
              isLeading: true,
            ),
            SizedBox(height: 16),
            CartHeader(),
            SizedBox(height: 24),
          ],
        ),
        Positioned(
          top: 150,
          bottom: 80,
          left: 0,
          right: 0,
          child: CustomScrollView(
            slivers: [
              // SliverToBoxAdapter(
              //   child: Column(
              //     children: [
              //       SizedBox(height: 16),
              //       CustomAppBar(
              //         title: 'السلة',
              //         isLeading: true,
              //       ),
              //       SizedBox(height: 16),
              //       CartHeader(),
              //       SizedBox(height: 24),
              //     ],
              //   ),
              // ),
              CartItemsList(cartItems: []),
            ],
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: 16,
          child: CustomButton(
            onPressed: () {},
            title: 'الدفع  ${context.watch<CartCubit>().cartEntity.totalPrice} جنيه',
          ),
        ),
      ],
    );
  }
}
