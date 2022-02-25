import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // color primiario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme:
        const AppBarTheme(color: primary, elevation: 0, centerTitle: true),

    // Text Button
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    // Floating button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary, elevation: 5),

    // Floating button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: Colors.indigo, shape: const StadiumBorder(), elevation: 0),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // color primiario
      primaryColor: Colors.lightBlue,

      //AppBar Theme
      appBarTheme: const AppBarTheme(
          color: Colors.lightBlue, elevation: 0, centerTitle: true),
      scaffoldBackgroundColor: Colors.black);
}
