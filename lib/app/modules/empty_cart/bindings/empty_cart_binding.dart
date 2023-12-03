import 'package:get/get.dart';

import '../controllers/empty_cart_controller.dart';

class EmptyCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmptyCartController>(
      () => EmptyCartController(),
    );
  }
}
