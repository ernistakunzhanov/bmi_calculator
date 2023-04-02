import 'package:bmi_calculator/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.mainColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.mainColor,
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
      ),
    );
  }
}
