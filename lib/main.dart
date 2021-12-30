import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tot/ui/views/login/login_view.dart';
import 'package:tot/ui/views/student/home/home_view.dart';
import 'package:tot/ui/views/teacher/home/teacher_homeView.dart';
import 'package:tot/utils/colors.dart';
import 'app/localisation/change_lang.dart';
import 'app/localisation/translation_helper.dart';
import 'app/theme/theme.dart';
import 'utils/routs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: WHITE_COLOR, // navigation bar color
      statusBarColor: WHITE_COLOR, // status bar color
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    //DevicePreview(
      //builder: (context) =>
       MyApp(
        appLanguage: appLanguage,
    //  ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppLanguage appLanguage;

  const MyApp({
    Key? key,
    required this.appLanguage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1520),
      builder: () => MaterialApp(
        
        localizationsDelegates: [
          AppLocal.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
       
        supportedLocales: [
          const Locale("en", ""),
          const Locale("ar", ""),
        ],
        locale: const Locale("ar", ""),
        //locale: model.appLocal,
        localeResolutionCallback: (currentLocale, supportedLocales) {
          if (currentLocale != null) {
            for (Locale locale in supportedLocales) {
              if (currentLocale.languageCode == locale.languageCode) {
                return currentLocale;
              }
            }
          }
          return supportedLocales.first;
        },
       // builder: DevicePreview.appBuilder,
        title: 'ToT',
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        routes: Routes.routes,
        home: LoginView(),
      ),
    );
  }
}
