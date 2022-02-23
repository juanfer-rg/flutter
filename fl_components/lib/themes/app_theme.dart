import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blueAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // color primiario
      primaryColor: primary,

      //AppBar Theme
      appBarTheme:
          const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // color primiario
      primaryColor: Colors.lightBlue,

      //AppBar Theme
      appBarTheme: const AppBarTheme(
          color: Colors.lightBlue, elevation: 0, centerTitle: true),
      scaffoldBackgroundColor: Colors.black);
}
