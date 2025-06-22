import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashView());

      default:
        return null;
    }
  }
}
