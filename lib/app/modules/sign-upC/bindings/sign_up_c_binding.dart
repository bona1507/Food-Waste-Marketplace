import 'package:get/get.dart';

import '../controllers/sign_up_c_controller.dart';

class SignUpCBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpCController>(
      () => SignUpCController(),
    );
  }
}
