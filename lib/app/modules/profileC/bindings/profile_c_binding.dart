import 'package:get/get.dart';

import '../controllers/profile_c_controller.dart';

class ProfileCBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileCController>(
      () => ProfileCController(),
    );
  }
}
