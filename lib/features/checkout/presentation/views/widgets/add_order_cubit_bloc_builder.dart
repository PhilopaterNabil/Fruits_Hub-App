import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/show_bar.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub/features/checkout/presentation/managers/add_order_cubit/add_order_cubit.dart';

class AddOrderCubitBlocBuilder extends StatelessWidget {
  const AddOrderCubitBlocBuilder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          success: () {
            showBar(context, 'تم اضافة الطلب بنجاح');
          },
          failure: (errorMessage) {
            showBar(context, errorMessage);
          },
        );
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state.maybeWhen(loading: () => true, orElse: () => false),
          child: child,
        );
      },
    );
  }
}
