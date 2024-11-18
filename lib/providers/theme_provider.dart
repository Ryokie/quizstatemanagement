import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light(); // Default theme

  ThemeData get currentTheme => _currentTheme;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners(); // Mengupdate UI
  }
}
