import 'package:app_comic/model/provider_model.dart';
import 'package:app_comic/model/shared_preferences_model.dart';
import 'package:app_comic/page/home_page.dart';
import 'package:app_comic/page/splash_page.dart';
import 'package:app_comic/widget/botton_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constant/theme_constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Style.themeData(themeChangeProvider.darkTheme, context),
            home: SplashPage(),
          );
        },
      ),
    );
  }
}
