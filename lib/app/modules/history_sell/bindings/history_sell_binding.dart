import 'package:get/get.dart';

import '../controllers/history_sell_controller.dart';

class HistorySellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistorySellController>(
      () => HistorySellController(),
    );
  }
}
