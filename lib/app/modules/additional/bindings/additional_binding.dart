import 'package:get/get.dart';

import '../controllers/additional_controller.dart';

class AdditionalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdditionalController>(
      () => AdditionalController(),
    );
  }
}
