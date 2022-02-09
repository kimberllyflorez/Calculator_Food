import 'package:flutter/material.dart';
import 'package:life_app/approuter/approuter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoutes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
