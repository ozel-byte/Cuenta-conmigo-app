import 'package:cicla/providers/valid_session.dart';
import 'package:cicla/screens/home_screen.dart';
import 'package:cicla/screens/sign_in_screen.dart';
import 'package:cicla/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  late ValidSession validSession;

  AppRoute({required this.validSession});

  final router = GoRouter(
      // redirect: (BuildContext context, GoRouterState state) {
      //   if (validSession.initialRoute == "home") {
      //     return "/home";
      //   } else {
      //     return null;
      //   }
      // },
      routes: [
        GoRoute(path: "/home", builder: (context, state) => const SignInScreen()),
        GoRoute(path: "/sign-up", builder: (context, state) => SignUpScreen()),
        GoRoute(
          path: "/",
          builder: (context, state) => const HomeScreen(),
        )
      ]);
}
