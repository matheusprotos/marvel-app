import 'package:flutter/material.dart';

class ThemeConstants {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF202124),
    primaryColor: const Color(0xFFE11023),
    primaryColorDark: const Color(0xFFd31021),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF303134),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF303134),
      unselectedItemColor: Colors.white,
      selectedItemColor: Color(0xFFE11023),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        color: Color(0xFF969ba1),
      ),
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      labelStyle: const TextStyle(
        color: Colors.white,
      ),
      floatingLabelStyle: const TextStyle(
        color: Colors.white,
      ),
      errorStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFFF4F3F5),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
