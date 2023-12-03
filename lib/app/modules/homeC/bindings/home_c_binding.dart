import 'package:get/get.dart';

import '../controllers/home_c_controller.dart';

class HomeCBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeCController>(
      () => HomeCController(),
    );
  }
}
