import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruits_hub/core/routing/routes.dart';
import 'package:fruits_hub/features/splash/data/repos/splash_repo.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this._repo) : super(const SplashState.initial());

  final SplashRepo _repo;

  Future<void> navigateNext() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
    final seen = await _repo.isOnBoardingSeen();
    final isLoggedIn = _repo.isUserLoggedIn();

    final nextRoute =
        seen ? (isLoggedIn ? Routes.homeScreen : Routes.loginScreen) : Routes.onBoardingScreen;

    emit(SplashState.navigateTo(nextRoute));
  }
}
