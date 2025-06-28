import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/constants.dart';
import 'package:fruits_hub/features/splash/data/repos/splash_repo.dart';

class SplashRepoImpl implements SplashRepo {
  @override
  Future<bool> isOnBoardingSeen() async {
    return SharedPreferencesSingleton.getBool(kIsOnBoardingViewSeen);
  }
}