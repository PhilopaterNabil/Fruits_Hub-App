import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/build_error_bar.dart';
import 'package:fruits_hub/features/Home/presentation/managers/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/main_view_body.dart';

class MainViewBodyBlocConsumer extends StatelessWidget {
  const MainViewBodyBlocConsumer({super.key, required this.currentViewIndex});

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartProductAddedState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('تمت إضافة المنتج إلى السلة بنجاح'),
              duration: Duration(seconds: 1),
            ),
          );
        } else if (state is CartProductRemovedState) {
          buildErrorBar(context, 'تمت إزالة المنتج من السلة بنجاح');
        }
      },
      child: MainViewBody(currentViewIndex: currentViewIndex),
    );
  }
}
