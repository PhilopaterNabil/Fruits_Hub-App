import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Image.asset(AppImagesAssets.imagesProfileImage),
      title: Text('صباح الخير !..', style: AppTextStyles.font16LightGreyRegular),
      subtitle: Text(
        'فيلوباتير نبيل',
        style: AppTextStyles.font16WhiteBold.copyWith(color: AppColors.blackColor),
      ),
      trailing: NotificationWidget(),
    );
  }
}
