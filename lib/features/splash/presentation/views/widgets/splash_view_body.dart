import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_images_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppImagesAssets.imagesPlant)
                .animate()
                .slideY(begin: -1, end: 0, duration: 300.ms),
          ],
        ),
        SvgPicture.asset(AppImagesAssets.imagesLogo),
        SvgPicture.asset(
          AppImagesAssets.imagesSplashBottom,
          fit: BoxFit.fill,
        ).animate().slideY(begin: 1, end: 0, duration: 300.ms),
      ],
    );
  }
}
