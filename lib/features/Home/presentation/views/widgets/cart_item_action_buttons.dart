import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          icon: Icons.add_outlined,
          backgroundColor: AppColors.greenColor,
          colorIcon: AppColors.whiteColor,
          onPressed: () {},
        ),
        SizedBox(width: 16),
        Text(
          '1',
          style: AppTextStyles.font16WhiteBold.copyWith(color: AppColors.deepForestColor),
        ),
        SizedBox(width: 16),
        CartItemActionButton(
          icon: Icons.remove_outlined,
          backgroundColor: AppColors.fogGreyColor,
          colorIcon: AppColors.ashGreyColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
