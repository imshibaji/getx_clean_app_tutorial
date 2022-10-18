import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean App'),
        centerTitle: true,
        actions: [
          Obx(
            (() => Switch(
                  value: controller.isLight.value,
                  onChanged: (value) {
                    if (value) {
                      Get.changeThemeMode(ThemeMode.light);
                    } else {
                      Get.changeThemeMode(ThemeMode.dark);
                    }
                    controller.changeSwitch(value);
                  },
                )),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HomeScreen is working',
              style: TextStyle(fontSize: 20),
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
