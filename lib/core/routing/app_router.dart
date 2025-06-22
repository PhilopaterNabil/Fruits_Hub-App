import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      default:
        return null;
    }
  }
}
