part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _SplashInitial;
  const factory SplashState.navigateTo(String route) = SplashNavigateTo;
}
