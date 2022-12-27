import 'package:get/get.dart';

import '../../../../presentation/forget/controllers/forget.controller.dart';

class ForgetControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetController>(
      () => ForgetController(),
    );
  }
}
