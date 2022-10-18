import 'package:get/get.dart';

import '../../../../presentation/about/controllers/about.controller.dart';

class AboutControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );
  }
}
