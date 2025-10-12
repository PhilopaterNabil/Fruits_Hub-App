import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/Home/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
            icon: Icons.add_outlined,
            backgroundColor: AppColors.greenColor,
            colorIcon: AppColors.whiteColor,
            onPressed: () {
              cartItemEntity.incrementCount();
              context.read<CartItemCubit>().updateCartItem(cartItemEntity);
            }),
        SizedBox(width: 16),
        Text(
          cartItemEntity.count.toString(),
          style: AppTextStyles.font16WhiteBold.copyWith(color: AppColors.deepForestColor),
        ),
        SizedBox(width: 16),
        CartItemActionButton(
          icon: Icons.remove_outlined,
          backgroundColor: AppColors.fogGreyColor,
          colorIcon: AppColors.ashGreyColor,
          onPressed: () {
            cartItemEntity.decrementCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
      ],
    );
  }
}
