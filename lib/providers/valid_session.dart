import 'package:flutter/material.dart';

class ValidSession extends ChangeNotifier {
  String initialRoute = "";

  switchInitialRoute(route) {
    initialRoute = route;
    notifyListeners();
  }
}
