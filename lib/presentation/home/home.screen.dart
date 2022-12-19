import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_clean_app/domain/core/interfaces/app_light_dark_switch.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean App'),
        centerTitle: true,
        actions: const [
          // Obx(
          // (() => Switch(
          // value: controller.isLight.value,
          // onChanged: (value) {
          // if (value) {
          // Get.changeThemeMode(ThemeMode.light);
          // } else {
          // Get.changeThemeMode(ThemeMode.dark);
          // }
          // controller.changeSwitch(value);
          // },
          // )),
          // ),
          AppLightDarkSwitch(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'welcome'.tr,
              style: const TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'EN'));
                  },
                  child: const Text("English"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('hi', 'HI'));
                  },
                  child: const Text("Hindi"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('bn', 'BN'));
                  },
                  child: const Text("Bengali"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("button_click".tr),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/about');
              },
              child: const Text("Goto About Screen"),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/settings');
                },
                child: const Text("Goto Settings Screen")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
