import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors.dart';

ThemeData themeData() {
  bool iSTable = ScreenUtil().screenWidth > 600 ? true : false;
  return ThemeData(
      primaryColor: WHITE_COLOR,
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: OFF_WHITE_COLOR,
        cursorColor: GREEN_COLOR,
        selectionHandleColor: DARK_GREEN_COLOR,
      ),
      
      colorScheme: ColorScheme(
        primary: WHITE_COLOR,
        primaryVariant: OFF_WHITE_COLOR,
        secondary: WHITE_COLOR,
        secondaryVariant: OFF_WHITE_COLOR,
        surface: WHITE_COLOR,
        background: WHITE_COLOR,
        error: RED_COLOR,
        onPrimary: VERY_LIGHT_GRAY_COLOR,
        onSecondary: VERY_LIGHT_GRAY_COLOR,
        onSurface: VERY_LIGHT_GRAY_COLOR,
        onBackground: WHITE_COLOR,
        onError: RED_COLOR,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: WHITE_COLOR,
      unselectedWidgetColor: GREEN_COLOR,
      fontFamily: "Tajawal",
      iconTheme: IconThemeData(
        color: BLACK_COLOR,
        size: ScreenUtil().screenWidth * 0.07,
      ),
      dividerTheme: const DividerThemeData(
        color: LIGHT_GRAY_COLOR,
        thickness: 1,
      ),
      appBarTheme: AppBarTheme(
        titleSpacing: 0,
        elevation: 0.5,
        shadowColor: VERY_LIGHT_GRAY_COLOR,
        centerTitle: true,
        color: WHITE_COLOR,
        titleTextStyle: TextStyle(
          color: BLACK_COLOR,
          fontSize: iSTable ? 30 : 16,
          fontWeight: FontWeight.w700,
        ),
        iconTheme: IconThemeData(
          color: BLACK_COLOR,
          size: ScreenUtil().screenWidth * 0.07,
        ),
      ),
      cardTheme: CardTheme(
        color: WHITE_COLOR,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(7),
      ),

      //****************** textTheme ************************* */

      textTheme: TextTheme(
        //****************** 16 bold ************************* */
        button: TextStyle(
          color: WHITE_COLOR,
          //fontSize: ScreenUtil().setSp(16),
          fontSize: iSTable ? 30 : 16,
          fontWeight: FontWeight.w700,
        ),
        //****************** 18 bold ************************* */
        headline1: TextStyle(
          color: BLACK_COLOR,
          //fontSize: ScreenUtil().setSp(20),
          fontSize: iSTable ? 32 : 18,
          fontWeight: FontWeight.w700,
        ),
        //****************** 14 Medium ************************* */
        headline2: TextStyle(
          color: GREEN_COLOR,
          //fontSize: ScreenUtil().setSp(15),
          fontSize: iSTable ? 26 : 14,
          fontWeight: FontWeight.w500,
        ),
        //****************** 14 Regular************************* */
        subtitle1: TextStyle(
          color: DARK_GRAY_COLOR,
          //fontSize: ScreenUtil().setSp(20),
          fontSize: iSTable ? 26 : 14,
          fontWeight: FontWeight.w400,
        ),
        //****************** 13 Regular************************* */
        bodyText1: TextStyle(
          color: Color(0xFF808080),
          //fontSize: ScreenUtil().setSp(16),
          fontSize: iSTable ? 24 : 12,
          fontWeight: FontWeight.w400,
        ),
        
      ),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
