import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub/core/utils/search_text_field.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/products_grid_view_bloc_builder.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/products_view_header.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomAppBar(
                title: 'المنتجات',
                isLeading: false,
                isNotificationEnabled: true,
              ),
              SizedBox(height: 16),
              SearchTextField(),
              SizedBox(height: 12),
              ProductsViewHeaders(productsLength: context.read<ProductsCubit>().productsLength),
              SizedBox(height: 8),
            ],
          ),
        ),
        ProductsGridViewBlocBuilder(),
      ],
    );
  }
}
