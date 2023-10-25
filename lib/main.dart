import 'package:cicla/providers/valid_session.dart';
import 'package:cicla/route.dart';
import 'package:cicla/theme/theme_light.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ValidSession validSession = ValidSession();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [Provider(create: (_) => ValidSession())],
        child: ChangeNotifierProvider.value(
          value: validSession,
          child: MaterialApp.router(
              routerConfig: AppRoute(validSession: validSession).router,
              debugShowCheckedModeBanner: false,
              title: 'Cuenta conmigo',
              theme: ThemeLight.themeOne),
        ));
  }
}
