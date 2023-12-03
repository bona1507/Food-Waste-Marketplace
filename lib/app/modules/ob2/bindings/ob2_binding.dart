import 'package:get/get.dart';

import '../controllers/ob2_controller.dart';

class Ob2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ob2Controller>(
      () => Ob2Controller(),
    );
  }
}
