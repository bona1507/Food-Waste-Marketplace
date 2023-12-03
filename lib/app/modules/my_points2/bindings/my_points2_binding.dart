import 'package:get/get.dart';

import '../controllers/my_points2_controller.dart';

class MyPoints2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyPoints2Controller>(
      () => MyPoints2Controller(),
    );
  }
}
