import 'package:fruits_hub/features/on_boarding/data/repos/splash_repo.dart';
import 'package:fruits_hub/features/on_boarding/data/repos/splash_repo_impl.dart';
import 'package:fruits_hub/features/on_boarding/presentation/managers/splash_cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio dio = DioFactory.getDio();
  // final dio = await DioFactory.getDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // splash
  getIt.registerLazySingleton<SplashRepo>(() => SplashRepoImpl());
  getIt.registerLazySingleton<SplashCubit>(() => SplashCubit(getIt()));

  // // login
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepoImpl(apiService: getIt()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // // sign up
  // getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(apiService: getIt()));
  // getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // // home
  // getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt()));
}
