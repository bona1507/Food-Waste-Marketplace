import 'package:get/get.dart';

import '../controllers/qris_controller.dart';

class QrisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrisController>(
      () => QrisController(),
    );
  }
}
