import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = const Locale('en', '');

  Locale get appLocal => _appLocale;
  fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    _appLocale = Locale(prefs.getString('language_code') ?? 'en', '');
    return Null;
  }

  void changeLanguage(Locale languageCode) async {
    var prefs = await SharedPreferences.getInstance();
    if (_appLocale == languageCode) {
      return;
    }
    if (languageCode == const Locale("ar", '')) {
      _appLocale = const Locale("ar", '');
      await prefs.setString('language_code', 'ar');
    } else {
      _appLocale = const Locale("en", "");
      await prefs.setString('language_code', 'en');
    }
    notifyListeners();
  }
}
