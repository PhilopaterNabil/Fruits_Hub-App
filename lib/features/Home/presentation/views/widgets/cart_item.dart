import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_network_image.dart';
import 'package:fruits_hub/features/Home/domain/entites/cart_item_entity.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_item_action_buttons.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.silverGreyColor,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 16),
            Container(
              width: 73,
              height: 92,
              decoration: BoxDecoration(color: AppColors.fogGreyColor),
              child: Center(
                child: CustomNetworkImage(imageUrl: cartItemEntity.productEntity.imageUrl!),
              ),
              // child: Center(child: CustomNetworkImage(imageUrl: 'https://i.imgur.com/BoN9kdC.png')),
            ),
            SizedBox(width: 17),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                Text(
                  cartItemEntity.productEntity.name,
                  style: AppTextStyles.font13LightGreyBold.copyWith(color: AppColors.deepTealColor),
                ),
                Spacer(flex: 1),
                Text(
                  '${cartItemEntity.totalWeight} كجم',
                  style: AppTextStyles.font13LightGreyRegular
                      .copyWith(color: AppColors.brightOrangeColor),
                ),
                Spacer(flex: 2),
                CartItemActionButtons(cartItemEntity: cartItemEntity),
                SizedBox(height: 8),
              ],
            ),
            Spacer(),
            Column(
              children: [
                IconButton(
                  onPressed: () => context.read<CartCubit>().deleteCartItem(cartItemEntity),
                  icon: SvgPicture.asset(AppImagesAssets.imagesTrash),
                ),
                Spacer(),
                Text(
                  '${cartItemEntity.totalPrice} جنيه ',
                  style: AppTextStyles.font16WhiteBold.copyWith(color: AppColors.brightOrangeColor),
                ),
                SizedBox(height: 8),
              ],
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
