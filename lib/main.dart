import 'package:cicla/route.dart';
import 'package:cicla/theme/theme_light.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp();
  runApp(const MyApp());
}

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
