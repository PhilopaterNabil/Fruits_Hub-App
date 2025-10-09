import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/products_grid_view.dart';

class BestSellingFruitsViewBody extends StatelessWidget {
  const BestSellingFruitsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(right: 16, top: 24, bottom: 8),
          sliver: SliverToBoxAdapter(
            child: Text(
              'الأكثر مبيعًا',
              style: AppTextStyles.font16WhiteBold.copyWith(color: AppColors.blackColor),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: ProductsGridView(
            products: [], // Assuming products will be passed from a parent widget or fetched from a service
          ),
        ),
      ],
    );
  }
}
