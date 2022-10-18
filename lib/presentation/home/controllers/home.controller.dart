import 'package:get/get.dart';

class HomeController extends GetxController {
  final isLight = (!Get.isDarkMode).obs;
  final count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;

  void changeSwitch(bool themeMode) {
    isLight.value = themeMode;
  }
}
