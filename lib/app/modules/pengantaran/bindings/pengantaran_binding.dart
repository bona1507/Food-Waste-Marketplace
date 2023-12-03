import 'package:get/get.dart';

import '../controllers/pengantaran_controller.dart';

class PengantaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengantaranController>(
      () => PengantaranController(),
    );
  }
}
