import 'package:app_comic/model/shared_preferences_model.dart';
import 'package:flutter/cupertino.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreferences darkThemePreferences = DarkThemePreferences();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreferences.setDarkTheme(value);
    notifyListeners();
  }
}
