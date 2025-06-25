import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/extensions.dart';
import 'package:fruits_hub/features/on_boarding/presentation/managers/splash_cubit/splash_cubit.dart';
import 'package:fruits_hub/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listenWhen: (previous, current) => current is SplashNavigateTo,
      listener: _handleSplashStateListener,
      child: const Scaffold(
        body: SplashViewBody(),
      ),
    );
  }

  void _handleSplashStateListener(BuildContext context, SplashState state) {
    state.maybeWhen(
      navigateTo: (route) => context.goToNamed(route),
      orElse: () {},
    );
  }
}
