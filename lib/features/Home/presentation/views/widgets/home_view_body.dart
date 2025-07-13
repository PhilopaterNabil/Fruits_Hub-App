import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/search_text_field.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomHomeAppBar(),
                SizedBox(height: 16),
                SearchTextField(),
                SizedBox(height: 12),
                FeaturedItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
