import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isDarkTheme = false;
  ChangeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
