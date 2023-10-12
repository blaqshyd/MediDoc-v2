import 'package:flutter/material.dart';
import 'package:medidoc/utils/theme/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    primarySwatch: const MaterialColor(0xFFF3F3F3, <int, Color>{
      50: Color(0xFFF3F3F3),
      100: Color(0xFFF3F3F3),
    }),
    scaffoldBackgroundColor: const Color(0xFFF3F3F3),
    useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    // textButtonTheme: const TextButtonThemeData(
    //     style: ButtonStyle())
    // scaffoldBackgroundColor: const Color(0xFFF3F3F3),
  );
}
