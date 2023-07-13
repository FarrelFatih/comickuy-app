import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreferences {
  static const isDark = "is_Dark";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(isDark, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isDark) ?? false;
  }

  // Future<bool> saveAccount() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  // }
}
