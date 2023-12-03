import 'package:get/get.dart';

import '../controllers/notification2_controller.dart';

class Notification2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Notification2Controller>(
      () => Notification2Controller(),
    );
  }
}
