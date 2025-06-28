import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/di/dependency_injection.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/splash/presentation/managers/splash_cubit/splash_cubit.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splashScreen,
    routes: [
      GoRoute(
        path: Routes.splashScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<SplashCubit>()..navigateNext(),
          child: const SplashView(),
        ),
      ),
      GoRoute(
        path: Routes.onBoardingScreen,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: Routes.signupScreen,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
  // Route<dynamic>? generateRoute(RouteSettings settings) {
  //   // final arguments = settings.arguments;

  //   switch (settings.name) {
  //     case Routes.splashScreen:
  //       return MaterialPageRoute(
  //         builder: (context) => BlocProvider(
  //           create: (context) => SplashCubit(getIt())..navigateNext(),
  //           child: const SplashView(),
  //         ),
  //       );
  //     case Routes.onBoardingScreen:
  //       return MaterialPageRoute(builder: (context) => const OnBoardingView());
  //     case Routes.loginScreen:
  //       return MaterialPageRoute(builder: (context) => const LoginView());
  //     default:
  //       return null;
  //   }
  // }
}
