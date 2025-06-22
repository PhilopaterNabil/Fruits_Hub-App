import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/data/data_sources/on_boarding_local_data.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => PageViewItem(
        index: index,
        onBoardingModel: onBoardingPages[index],
      ),
    );
  }
}
