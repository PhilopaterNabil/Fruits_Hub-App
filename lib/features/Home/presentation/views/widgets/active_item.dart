import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.title, required this.iconPath});

  final String title, iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 7),
      decoration: BoxDecoration(
        color: AppColors.lightPlatinumGreyColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: AppColors.greenColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(child: SvgPicture.asset(iconPath)),
          ),
          SizedBox(width: 4),
          Text(
            title,
            style: AppTextStyles.font11BlackSemiBold.copyWith(color: AppColors.greenColor),
          ),
        ],
      ),
    );
  }
}
