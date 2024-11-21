import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryBlue = Color(0xFF0500FF);
  static const Color backgroundLight = Color(0xFFF5F5F5);
  static const Color backgroundDark = Color(0xFFF0F0F0);
  static const Color textPrimary = Color(0xFF1C1C1C);
  static const Color textSecondary = Color(0xFF9E9E9E);
  static const Color borderColor = Color(0xFFDFDFDF);
  static const Color buttonColor = Color(0xFF0500FF);

  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'Helvetica',
      textTheme: _textTheme,
      primaryColor: primaryBlue,
      scaffoldBackgroundColor: backgroundLight,
      hintColor: textSecondary,
      dividerColor: borderColor,
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundLight,
        iconTheme: const IconThemeData(color: textPrimary),
        toolbarTextStyle: const TextTheme(
          titleLarge: TextStyle(color: textPrimary, fontSize: 20),
        ).bodyMedium,
        titleTextStyle: const TextTheme(
          titleLarge: TextStyle(color: textPrimary, fontSize: 20),
        ).titleLarge,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: buttonColor,
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: backgroundDark,
        hintStyle: TextStyle(color: textSecondary),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryBlue, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor, width: 2),
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: textPrimary),
    );
  }
}

const TextStyle _baseTextStyle = TextStyle(
  fontFamily: 'Helvetica',
  color: Colors.black,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
final TextTheme _textTheme = TextTheme(
  displayLarge:
      _baseTextStyle.copyWith(fontSize: 32, fontWeight: FontWeight.w500),
  displayMedium:
      _baseTextStyle.copyWith(fontSize: 28, fontWeight: FontWeight.w500),
  displaySmall:
      _baseTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w500),
  headlineLarge:
      _baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
  headlineMedium:
      _baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
  headlineSmall:
      _baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
  titleLarge: _baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w500),
  titleMedium:
      _baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
  titleSmall: _baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
  bodyLarge: _baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
  bodyMedium: _baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
  bodySmall: _baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
  labelLarge: _baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
  labelMedium:
      _baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
  labelSmall: _baseTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w500),
);
