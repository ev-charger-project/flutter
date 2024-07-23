import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'text_styles.dart';
import 'text_theme.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.primary,
      dividerColor: AppColors.dividerColor,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
        surface: AppColors.black,
      ).copyWith(
        surfaceTint: AppColors.transparentGrey, // Adding custom color
      ),
      scaffoldBackgroundColor: AppColors.black,
      textTheme: TextThemes.darkTextTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.black,
        titleTextStyle: AppTextStyles.b2,
      ),
    );
  }

  /// Light theme data of the app
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      textTheme: TextThemes.textTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      dividerColor: AppColors.dividerColor,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.white,
        error: AppColors.error,
      ).copyWith(
        surfaceTint: AppColors.transparentGrey,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}

extension CustomTheme on ThemeData {
  Color get lightGrey => AppColors.lightGrey;
  Color get extraLightGrey => AppColors.extraLightGrey;

  Color get lightGreen => AppColors.lightGreen;

  Color get powerOutputGrey => AppColors.moreGrey;
}
