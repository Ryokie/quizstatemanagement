import 'package:flutter/material.dart';

class FontProvider with ChangeNotifier {
  String _currentFont = 'Roboto'; // Default font

  String get currentFont => _currentFont;

  void setFont(String font) {
    _currentFont = font;
    notifyListeners(); // Mengupdate UI
  }
}
