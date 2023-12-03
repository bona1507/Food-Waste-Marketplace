import 'package:get/get.dart';

import '../controllers/arrived_controller.dart';

class ArrivedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArrivedController>(
      () => ArrivedController(),
    );
  }
}
