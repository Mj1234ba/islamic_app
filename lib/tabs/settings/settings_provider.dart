import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';
  /*  must put late coz in intilaize the value is unknown  */
  // late String backgroundImageName =
  //     themeMode == ThemeMode.light ? "default_bg" : "default_bg";
  String get backgroundImageName =>
      themeMode == ThemeMode.light ? "default_bg" : "dark_bg";

  String get sebhaName => themeMode == ThemeMode.light
      ? 'images/body_sebha_logo.png'
      : "images/body_sebha_dark.png";

  String get headSebha => themeMode == ThemeMode.light
      ? 'images/head_sebha_logo.png'
      : "images/head_sebha_dark.png";

  void changeTheme(ThemeMode selectedTheme) {
    /* this for   bootun sheet to not coose dark twice and rebuld for no reason*/
    if (selectedTheme == themeMode) return;
    themeMode = selectedTheme;
    notifyListeners();
  }

  void changeLanguage(String selectedLanguage) {
    if (selectedLanguage == languageCode) return;

    languageCode = selectedLanguage;
    notifyListeners();
  }
}
