import 'package:get/get.dart';

import '../controllers/jadwalsholat_controller.dart';

class JadwalsholatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JadwalsholatController>(
      () => JadwalsholatController(),
    );
  }
}
