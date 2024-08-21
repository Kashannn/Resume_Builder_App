import 'package:flutter/material.dart';

class ThemeChangerController extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme(bool isDarkMode) {
    themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
