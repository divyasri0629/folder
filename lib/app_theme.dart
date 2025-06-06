import 'package:flutter/material.dart';

class AppTheme {
  static const gradientBackground = BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFFB56BEB), Color(0xFF7ED5EA)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFB56BEB),
      elevation: 0,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(color: Colors.black, fontSize: 15),
    ),
  );
}