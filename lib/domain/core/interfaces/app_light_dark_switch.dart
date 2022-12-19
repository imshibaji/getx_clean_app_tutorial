import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLightDarkSwitch extends StatefulWidget {
  const AppLightDarkSwitch({super.key});

  @override
  State<AppLightDarkSwitch> createState() => _AppLightDarkSwitchState();
}

class _AppLightDarkSwitchState extends State<AppLightDarkSwitch> {
  bool isLight = true;

  @override
  void initState() {
    isLight = !Get.isDarkMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isLight,
      onChanged: (value) {
        if (value) {
          Get.changeThemeMode(ThemeMode.light);
        } else {
          Get.changeThemeMode(ThemeMode.dark);
        }
        isLight = value;
        setState(() {});
      },
    );
  }
}
