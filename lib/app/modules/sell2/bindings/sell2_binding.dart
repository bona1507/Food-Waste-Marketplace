import 'package:get/get.dart';

import '../controllers/sell2_controller.dart';

class Sell2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Sell2Controller>(
      () => Sell2Controller(),
    );
  }
}
