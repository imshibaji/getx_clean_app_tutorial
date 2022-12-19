import 'package:flutter/material.dart';
import 'package:getx_clean_app/infrastructure/theme/app_button_themes.dart';
import 'package:getx_clean_app/infrastructure/theme/app_elevated_button_themes.dart';
import 'package:getx_clean_app/infrastructure/theme/app_floating_button_themes.dart';
import 'package:getx_clean_app/infrastructure/theme/app_switch_themes.dart';

import 'app_bar_theme.dart';
import 'app_colors.dart';

class AppThemes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.sea),
    appBarTheme: AppBarThemes.light,
    scaffoldBackgroundColor: AppColors.sea.shade50,
    buttonTheme: AppButtonThemes.light,
    elevatedButtonTheme: AppElevatedButtonThemes.light,
    switchTheme: AppSwitchThemes.light,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(primary: AppColors.sea),
    appBarTheme: AppBarThemes.dark,
    scaffoldBackgroundColor: AppColors.sea.shade900.withAlpha(100),
    floatingActionButtonTheme: AppFloatingButtonThemes.dark,
    switchTheme: AppSwitchThemes.dark,
  );
}
