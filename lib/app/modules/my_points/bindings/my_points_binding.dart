import 'package:get/get.dart';

import '../controllers/my_points_controller.dart';

class MyPointsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyPointsController>(
      () => MyPointsController(),
    );
  }
}
