import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/constants/color_constant.dart';

enum ThemeState { light, dark }

class ThemeNotifier extends ChangeNotifier {
  ThemeState themeState = ThemeState.dark;
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ThemeData.dark().colorScheme.copyWith(primary: Colors.grey),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: ColorConstant.darkSearchBarColor,
      filled: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black, foregroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.black,
  );

  static ThemeData lightTheme = ThemeData(
    colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.grey),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white, foregroundColor: Colors.black),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: ColorConstant.lightSearchBarColor,
      filled: true,
    ),
  );

  changeTheme(ThemeState themeValue) {
    themeState = themeValue;
    notifyListeners();
  }
}
