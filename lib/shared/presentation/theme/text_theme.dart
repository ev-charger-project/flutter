import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'text_styles.dart';

class TextThemes {
  /// Main text theme

  static TextTheme get textTheme {
    return const TextTheme(
      bodyLarge: AppTextStyles.bodyLg,
      bodyMedium: AppTextStyles.body,
      titleMedium: AppTextStyles.bodySm,
      titleSmall: AppTextStyles.bodyXs,
      displayLarge: AppTextStyles.b1,
      displayMedium: AppTextStyles.b2,
      displaySmall: AppTextStyles.b3,
      headlineMedium: AppTextStyles.b4,

    );
  }

  /// Dark text theme

  static TextTheme get darkTextTheme {
    return TextTheme(
      bodyLarge: AppTextStyles.bodyLg.copyWith(color: AppColors.white),
      bodyMedium: AppTextStyles.body.copyWith(color: AppColors.white),
      titleMedium: AppTextStyles.bodySm.copyWith(color: AppColors.white),
      titleSmall: AppTextStyles.bodyXs.copyWith(color: AppColors.white),
      displayLarge: AppTextStyles.b1.copyWith(color: AppColors.white),
      displayMedium: AppTextStyles.b2.copyWith(color: AppColors.white),
      displaySmall: AppTextStyles.b3.copyWith(color: AppColors.white),
      headlineMedium: AppTextStyles.b4.copyWith(color: AppColors.white),
    );
  }

  /// Primary text theme

  static TextTheme get primaryTextTheme {
    return TextTheme(
      bodyLarge: AppTextStyles.bodyLg.copyWith(color: AppColors.primary),
      bodyMedium: AppTextStyles.body.copyWith(color: AppColors.primary),
      titleMedium: AppTextStyles.bodySm.copyWith(color: AppColors.primary),
      titleSmall: AppTextStyles.bodyXs.copyWith(color: AppColors.primary),
      displayLarge: AppTextStyles.b1.copyWith(color: AppColors.primary),
      displayMedium: AppTextStyles.b2.copyWith(color: AppColors.primary),
      displaySmall: AppTextStyles.b3.copyWith(color: AppColors.primary),
      headlineMedium: AppTextStyles.b4.copyWith(color: AppColors.primary),
    );
  }
}
