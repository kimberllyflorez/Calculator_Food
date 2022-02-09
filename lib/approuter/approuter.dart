import 'package:flutter/cupertino.dart';
import 'package:life_app/login/Login.dart';

class AppRoutes {
  static const initialRoutes = 'loginScreen';

  static CupertinoPageRoute onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'loginScreen':
        return CupertinoPageRoute(
            builder: (_) => LoginScreen(), settings: settings);
      default:
        return CupertinoPageRoute(
            builder: (_) => LoginScreen(), settings: settings);
    }
  }
}
