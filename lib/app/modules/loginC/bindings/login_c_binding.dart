import 'package:get/get.dart';

import '../controllers/login_c_controller.dart';

class LoginCBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginCController>(
      () => LoginCController(),
    );
  }
}
