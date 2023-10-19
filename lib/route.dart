import 'package:cicla/screens/home_screen.dart';
import 'package:cicla/screens/sections/personal_data_section.dart';
import 'package:cicla/screens/sign_in_screen.dart';
import 'package:cicla/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
class AppRoute{

  static String initialRoute = "sign-up";
  static Map<String, Widget Function(BuildContext)> routes = {
    "login" : (_) => SignIn(),
    "sign-up" : (_) => SignUpScreen(),
    "home" : (_) =>  HomeScreen(),
    "section-1" : (_) => const PersonalDataSection()
  };

}