import 'package:get/get.dart';

import '../controllers/frozen_food_controller.dart';

class FrozenFoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FrozenFoodController>(
      () => FrozenFoodController(),
    );
  }
}
