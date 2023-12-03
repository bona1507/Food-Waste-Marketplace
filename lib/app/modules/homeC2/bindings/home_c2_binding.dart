import 'package:get/get.dart';

import '../controllers/home_c2_controller.dart';

class HomeC2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeC2Controller>(
      () => HomeC2Controller(),
    );
  }
}
