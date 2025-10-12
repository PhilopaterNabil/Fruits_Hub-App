import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/di/dependency_injection.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartItemCubit>(),
      child: CartViewBody(),
    );
  }
}
