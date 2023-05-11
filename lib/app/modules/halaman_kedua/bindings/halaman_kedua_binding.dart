import 'package:get/get.dart';

import '../controllers/halaman_kedua_controller.dart';

class HalamanKeduaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HalamanKeduaController>(
      () => HalamanKeduaController(),
    );
  }
}
