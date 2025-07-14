import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_hub/core/utils/app_images_assets.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var width = size.width;
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: width * 0.075,
                child: Image.asset(
                  AppImagesAssets.imagesFruits,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: width / 2,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(AppImagesAssets.imagesFeaturedItemBackground),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'عروض العيد',
                      style: AppTextStyles.font13LightGreyRegular.copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      'خصم 25%',
                      style: AppTextStyles.font19BlackBold.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 7),
                    FeaturedItemButton(
                      title: 'تسوق الان',
                      onPressed: () {},
                    ),
                    SizedBox(height: 4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
