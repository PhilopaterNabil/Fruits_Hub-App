import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_header.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomAppBar(
                title: 'السلة',
                isLeading: true,
              ),
              SizedBox(height: 16),
              CartHeader(),
            ],
          ),
        ),
      ],
    );
  }
}
