import 'package:get/get.dart';

import '../controllers/home_stateful_controller.dart';

class HomeStatefulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeStatefulController>(
      () => HomeStatefulController(),
    );
  }
}
