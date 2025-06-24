import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/data/models/on_boarding_model.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key, required this.onBoardingModel, required this.index, required this.isVisible});

  final int index;
  final OnBoardingModel onBoardingModel;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              SvgPicture.asset(
                onBoardingModel.backgroundImagePath,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(onBoardingModel.imagePath),
              ),
              index == 1
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('تخطى', style: AppTextStyles.font13LightGreyRegular),
                    ),
            ],
          ),
        ),
        SizedBox(height: 47),
        onBoardingModel.title,
        SizedBox(height: 24),
        Visibility(
          visible: isVisible,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              onBoardingModel.subTitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.font16GreySemiBold,
            ),
          ),
        ),
      ],
    );
  }
}
