import 'package:flutter/material.dart';
import 'package:reward_tracker/shared/shared.dart';

class ThemeConfig {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color background,
    required Color primaryColor,
    required Color primaryColorLight,
    required Color secondaryColor,
    required Color primaryText,
    required Color secondaryText,
    Color? buttonTextColor,
    Color? primaryTextButtonColor,
    Color? secondaryTextButtonColor,
  }) {
    final TextTheme baseTextTheme = TextTheme(
      displayLarge: TextStyle(
        debugLabel: 'Graphik displayLarge',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 96,
        fontWeight: FontWeight.w300,
      ),
      displayMedium: TextStyle(
        debugLabel: 'Graphik displayMedium',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 60,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        debugLabel: 'Graphik displaySmall',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        debugLabel: 'Graphik headlineLarge',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 44,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        debugLabel: 'Graphik headlineMedium',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 21,
        fontWeight: FontWeight.w500,
      ),
      headlineSmall: TextStyle(
        debugLabel: 'Graphik headlineSmall',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        debugLabel: 'Graphik titleLarge',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 21,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        debugLabel: 'Graphik titleMedium',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        debugLabel: 'Graphik titleSmall',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        debugLabel: 'Graphik bodyLarge',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        debugLabel: 'Graphik bodyMedium',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        debugLabel: 'Graphik bodySmall',
        fontFamily: 'Graphik',
        color: primaryText,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        debugLabel: 'Graphik labelLarge',
        fontFamily: 'Graphik',
        color: buttonTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        debugLabel: 'Graphik labelMedium',
        fontFamily: 'Graphik',
        color: buttonTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        debugLabel: 'Graphik labelSmall',
        fontFamily: 'Graphik',
        color: buttonTextColor,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: primaryColor,
          secondary: secondaryColor,
          background: background),
      brightness: brightness,
      primaryColor: primaryColor,
      primaryColorLight: primaryColorLight,
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        labelStyle: baseTextTheme.bodySmall?.copyWith(
          color: secondaryText,
        ),
        hintStyle: baseTextTheme.bodySmall?.copyWith(
          color: secondaryText,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: ColorConstants.borderColor, width: 0.75)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: ColorConstants.borderColor, width: 0.75)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: ColorConstants.borderColor, width: 0.75)),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      fontFamily: 'Graphik',
      textTheme: baseTextTheme,
    );
  }

  static ThemeData get baseTheme => createTheme(
        brightness: Brightness.light,
        background: ColorConstants.backgroundColor,
        primaryColor: ColorConstants.primaryColor,
        secondaryColor: ColorConstants.secondaryColor,
        primaryColorLight: ColorConstants.primaryColorLight,
        primaryText: ColorConstants.textPrimaryColor,
        secondaryText: ColorConstants.textSecondaryColor,
      );
}
