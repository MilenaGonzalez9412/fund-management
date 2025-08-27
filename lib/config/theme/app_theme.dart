import 'package:flutter/material.dart';
import 'package:fund_management/config/theme/custom_colors.dart';

class AppTheme {
  ThemeData appTheme() => ThemeData(
    canvasColor: CustomColors.platinum,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: CustomColors.marianBlue,
      onPrimary: CustomColors.coolGray,
      secondary: CustomColors.coolGray,
      onSecondary: CustomColors.licorice,
      error: CustomColors.red,
      onError: CustomColors.platinum,
      surface: CustomColors.platinum,
      onSurface: CustomColors.licorice,
    ),
    dataTableTheme: DataTableThemeData(
      headingRowHeight: 75,
      headingRowColor: WidgetStatePropertyAll(CustomColors.coolGray),
      headingTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      dataTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    ),
  );
}
