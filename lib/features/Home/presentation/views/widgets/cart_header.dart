import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_cubit/cart_cubit.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.mintFrostColor,
      child: Text(
        'لديك ${context.watch<CartCubit>().cartEntity.cartItems.length} منتجات في سله التسوق',
        textAlign: TextAlign.center,
        style: AppTextStyles.font13LightGreyRegular.copyWith(
          color: AppColors.greenColor,
        ),
      ),
    );
  }
}
