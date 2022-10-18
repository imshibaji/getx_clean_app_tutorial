import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppElevatedButtonThemes {
  static ElevatedButtonThemeData light = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.resolveWith((states) => AppColors.sea),
      foregroundColor:
          MaterialStateProperty.resolveWith((states) => Colors.white),
    ),
  );
}
