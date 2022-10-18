import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppSwitchThemes {
  static SwitchThemeData light = SwitchThemeData(
    trackColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.sea.shade900;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.sea.shade700;
    }),
  );

  static SwitchThemeData dark = SwitchThemeData(
    trackColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.sea.shade900;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      return AppColors.sea;
    }),
  );
}
