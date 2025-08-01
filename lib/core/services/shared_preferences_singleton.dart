import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSingleton {
  static SharedPreferences? _instance;

  SharedPreferencesSingleton._privateConstructor();

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instance!.setBool(key, value);
  }

  static bool getBool(String key) {
    return _instance?.getBool(key) ?? false;
  }

  static setString(String key, String value) async {
    await _instance!.setString(key, value);
  }

  static String getString(String key) {
    return _instance?.getString(key) ?? '';
  }
}
