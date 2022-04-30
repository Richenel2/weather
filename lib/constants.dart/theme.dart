import 'package:flutter/material.dart';
import 'package:weather/constants.dart/colors.dart';

class AppTheme {
  static final dark = ThemeData(
      scaffoldBackgroundColor: AppColors.blue,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent,elevation: 0),
      primaryColor: MaterialColor(0xFFFFFFFF, {
        50: Colors.white.withOpacity(0.1),
        100: Colors.white.withOpacity(0.2),
        200: Colors.white.withOpacity(0.3),
        300: Colors.white.withOpacity(0.4),
        400: Colors.white.withOpacity(0.5),
        500: Colors.white.withOpacity(0.6),
        600: Colors.white.withOpacity(0.7),
        700: Colors.white.withOpacity(0.8),
        800: Colors.white.withOpacity(0.9),
        900: Colors.white.withOpacity(0.9),
      }),
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 40, color: AppColors.black, fontWeight: FontWeight.w900),
        headline2: TextStyle(
            fontSize: 28, color: AppColors.black, fontWeight: FontWeight.w800),
        headline3: TextStyle(fontSize: 24, color: AppColors.gray),
        headline4: TextStyle(fontSize: 16, color: AppColors.gray),
        bodyText2: TextStyle(fontSize: 14, color: AppColors.white),
      ));
}
