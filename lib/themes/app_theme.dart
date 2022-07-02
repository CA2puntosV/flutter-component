import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: primary,
      elevation: 0.0,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: primary,
      elevation: 0.0,
    ),
    // scaffoldBackgroundColor: Colors.
  );

  //TextButton
  static final ButtonStyle textButtonTheme = TextButton.styleFrom(
    primary: primary,
  );
}
