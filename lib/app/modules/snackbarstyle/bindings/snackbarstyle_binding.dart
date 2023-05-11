import 'package:get/get.dart';

import '../controllers/snackbarstyle_controller.dart';

class SnackbarstyleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnackbarstyleController>(
      () => SnackbarstyleController(),
    );
  }
}
