import 'package:cicla/screens/home_screen.dart';
import 'package:cicla/screens/sections/personal_data_section.dart';
import 'package:flutter/material.dart';
class AppRoute{

  static String initialRoute = "home";
  static Map<String, Widget Function(BuildContext)> routes = {
    "home" : (_) =>  HomeScreen(),
    "section-1" : (_) => const PersonalDataSection()
  };

}