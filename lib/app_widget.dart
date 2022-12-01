import 'package:flutter/material.dart';
import 'package:splitit/modules/error/error_page.dart';
import 'package:splitit/modules/login/login_page.dart';
import 'package:splitit/modules/splash/splash_page.dart';
import 'package:splitit/modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Split.it',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/error': (context) => ErrorPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
