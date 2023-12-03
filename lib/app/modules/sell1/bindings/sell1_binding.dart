import 'package:get/get.dart';

import '../controllers/sell1_controller.dart';

class Sell1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Sell1Controller>(
      () => Sell1Controller(),
    );
  }
}
