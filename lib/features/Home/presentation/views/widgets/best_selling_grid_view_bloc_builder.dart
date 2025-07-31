import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/custom_error_widget.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (products) => BestSellingGridView(),
          failure: (errMessage) => CustomErrorWidget(errorMessage: errMessage),
          orElse: () => const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
