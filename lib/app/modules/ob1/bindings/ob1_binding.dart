import 'package:get/get.dart';

import '../controllers/ob1_controller.dart';

class Ob1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Ob1Controller>(
      () => Ob1Controller(),
    );
  }
}
