import 'package:app/src/ui/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:app/src/ui/splash.dart';

class AppRouter {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case homeRoute:
        return CupertinoPageRoute(builder: (_) => const MyHomePage());
      default:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
