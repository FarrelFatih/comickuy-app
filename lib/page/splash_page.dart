import 'dart:async';

import 'package:app_comic/widget/botton_navigation_widget.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) {
            return BottomNavbar();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "images/logo.png",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
