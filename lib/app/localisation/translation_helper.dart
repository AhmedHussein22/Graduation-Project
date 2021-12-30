import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocal {
  Locale locale;
AppLocal({required this.locale});

Map<String, String>? _language;
  static AppLocal of(BuildContext context) {
    return Localizations.of(context, AppLocal);
  }
Future loadLanguage ()async{
String _langFile = await rootBundle.loadString("assets/lang/${locale.languageCode}.json");
Map<String,dynamic>_loadedvalues = jsonDecode(_langFile);
_language = _loadedvalues.map((key, value) => MapEntry(key, value.toString()));
}

String? getTranslation(String key) {
  return _language?[key];

}

static const LocalizationsDelegate<AppLocal> delegate =_AppLocaleDelete();
}

class _AppLocaleDelete extends LocalizationsDelegate<AppLocal>{

  const _AppLocaleDelete();
  @override
  bool isSupported(Locale locale) {
      return ["ar","en"].contains(locale.languageCode);
    }
  
    @override
    Future<AppLocal> load(Locale locale)async {
      AppLocal appLocal =AppLocal(locale:locale);
      await appLocal.loadLanguage();
      return appLocal;
    }
  
    @override
    bool shouldReload(covariant LocalizationsDelegate<AppLocal> old) =>false;

}