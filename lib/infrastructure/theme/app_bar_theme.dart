import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppBarThemes {
  static AppBarTheme light = const AppBarTheme(
    backgroundColor: AppColors.sea,
    foregroundColor: Colors.white,
    elevation: 5,
    scrolledUnderElevation: 10,
  );

  static AppBarTheme dark = AppBarTheme(
    backgroundColor: AppColors.sea.shade800.withAlpha(50),
    foregroundColor: AppColors.sea.shade50,
    elevation: 5,
    scrolledUnderElevation: 10,
  );
}
