import 'package:get/get.dart';

import '../controllers/sell3_controller.dart';

class Sell3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Sell3Controller>(
      () => Sell3Controller(),
    );
  }
}
