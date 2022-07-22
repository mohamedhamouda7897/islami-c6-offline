import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String AppLanguage = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void ChangeAppLanguage(String languageCode) {
    AppLanguage = languageCode;
    notifyListeners();
  }

  void ChangeAppTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }

  String changeMainBackground() {
    return themeMode == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/background_dark.png';
  }
}
