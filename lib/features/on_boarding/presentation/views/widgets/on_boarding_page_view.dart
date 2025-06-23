import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/data/data_sources/on_boarding_local_data.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 2,
      controller: pageController,
      itemBuilder: (context, index) => PageViewItem(
        index: index,
        onBoardingModel: onBoardingPages[index],
        isVisible: (pageController.hasClients && pageController.page != null
                ? pageController.page!.round()
                : 0) ==
            index,
      ),
    );
  }
}
