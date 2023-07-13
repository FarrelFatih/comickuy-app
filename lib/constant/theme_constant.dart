import 'package:flutter/material.dart';

const color1 = Color(0xffFD8F28);
const color2 = Color(0xffFFEBF0);
const color3 = Color(0xffFFFFFF);
const color4 = Color(0xffF4F3FD);
const color5 = Color(0xff171723);
const color6 = Color(0xff000000);

class Style {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.orange,
      cardColor: isDarkTheme ? color6 : color3,
      // primaryColor: isDarkTheme ? color6 : color3,
      // textSelectionTheme: TextSelectionThemeData(
      //   selectionColor: isDarkTheme ? Colors.white : Colors.black,
      // ),
      scaffoldBackgroundColor: isDarkTheme ? Color(0xff171723) : Colors.white,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light(),
          ),
      shadowColor: isDarkTheme
          ? Colors.white38.withOpacity(0.3)
          : Colors.grey.withOpacity(0.3),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: color1,
        unselectedItemColor: isDarkTheme ? color3 : Colors.grey[400],
        selectedLabelStyle: TextStyle(color: color1),
        unselectedLabelStyle: isDarkTheme
            ? TextStyle(color: color3)
            : TextStyle(
                color: Colors.grey[400],
              ),
      ),
      colorScheme: ColorScheme(
        background: isDarkTheme ? color4 : color5,
        primary: color1,
        onPrimary: color1,
        onBackground: isDarkTheme ? color1 : color5,
        primaryContainer: isDarkTheme ? color5 : color4,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        secondary: color1,
        onSecondary: color1,
        error: isDarkTheme ? color4 : color6,
        onError: isDarkTheme ? color4 : color6,
        surface: color1,
        onSurface: color1,
      ),
    );
  }
}
