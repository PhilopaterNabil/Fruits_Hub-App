import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';

class CustomBottonNavigationBar extends StatelessWidget {
  const CustomBottonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.1),
            blurRadius: 25,
            spreadRadius: 0,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InActiveItem(iconPath: AppImagesAssets.imagesVuesaxOutlineHome),
          InActiveItem(iconPath: AppImagesAssets.imagesVuesaxOutlineProducts),
          InActiveItem(iconPath: AppImagesAssets.imagesVuesaxOutlineShoppingCart),
          InActiveItem(iconPath: AppImagesAssets.imagesVuesaxOutlineUser),
        ],
      ),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.iconPath});

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconPath);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, this.isActive = false});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const ActiveItem()
        : InActiveItem(iconPath: AppImagesAssets.imagesVuesaxOutlineHome);
  }
}
