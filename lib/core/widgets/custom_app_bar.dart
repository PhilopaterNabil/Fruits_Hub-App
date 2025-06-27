import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.onPressed, this.isLeading = true});

  final String title;
  final void Function()? onPressed;
  final bool isLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: isLeading
          ? IconButton(
              onPressed: onPressed ?? () => context.pop(),
              icon: Icon(Icons.arrow_back_ios),
            )
          : null,
      title: Text(title, style: AppTextStyles.font19BlackBold),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
