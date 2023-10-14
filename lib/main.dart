import 'package:cicla/route.dart';
import 'package:cicla/theme/theme_light.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cuenta conmigo',
      initialRoute: AppRoute.initialRoute,
      routes: AppRoute.routes,
      theme: ThemeLight.themeOne
    );
  }
}
