import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/best_selling_fruits/presentation/views/widgets/best_selling_fruits_view_body.dart';

class BestSellingFruitsView extends StatelessWidget {
  const BestSellingFruitsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'الأكثر مبيعًا', isNotificationEnabled: true),
      body: BestSellingFruitsViewBody(),
    );
  }
}
