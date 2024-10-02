import 'package:flutter/material.dart';

ThemeData buildAppTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF8A05BE),
    fontFamily: 'San Francisco',
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16.0,
        color: Colors.white70,
      ),
    ),
    cardColor: Color(0xFF1E1E1E),
    scaffoldBackgroundColor: Color(0xFF121212),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
    ),
  );
}
