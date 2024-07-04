import 'package:flutter/material.dart';
// import '../../data/data_source/local/storage_service.dart';
// import '../../domain/providers/hive_storage_service_provider.dart';
import 'app_colors.dart';
import 'test_styles.dart';
import 'text_theme.dart';

// final appThemeProvider = StateNotifierProvider<AppThemeModeNotifier, ThemeMode>(
//   (ref) {
//     final storage = ref.watch(storageServiceProvider);
//     return AppThemeModeNotifier(storage);
//   },
// );
//
// class AppThemeModeNotifier extends StateNotifier<ThemeMode> {
//   final StorageService storageService;
//
//   ThemeMode currentTheme = ThemeMode.light;
//
//   AppThemeModeNotifier(this.storageService) : super(ThemeMode.light) {
//     getCurrentTheme();
//   }
//
//   void toggleTheme() {
//     state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
//     storageService.setAppTheme(state.name);
//   }
//
//   void getCurrentTheme() async {
//     final theme = await storageService.getAppTheme();
//     final value = ThemeMode.values.byName(theme);
//     state = value;
//   }
// }

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
        background: AppColors.black,
      ),
      // backgroundColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.black,
      textTheme: TextThemes.darkTextTheme,
      primaryTextTheme: TextThemes.primaryTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.black,
        titleTextStyle: AppTextStyles.h2,
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
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
