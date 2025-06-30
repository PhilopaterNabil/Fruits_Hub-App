import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/managers/login_cubit/login_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/managers/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/splash/data/repos/splash_repo.dart';
import 'package:fruits_hub/features/splash/data/repos/splash_repo_impl.dart';
import 'package:fruits_hub/features/splash/presentation/managers/splash_cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio dio = DioFactory.getDio();
  // final dio = await DioFactory.getDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());

  // splash
  getIt.registerLazySingleton<SplashRepo>(() => SplashRepoImpl());
  getIt.registerLazySingleton<SplashCubit>(() => SplashCubit(getIt()));

  // login
  getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // sign up
  getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // // home
  // getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt()));
}
