import 'package:get/get.dart';

import '../controllers/halaman_ketiga_controller.dart';

class HalamanKetigaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HalamanKetigaController>(
      () => HalamanKetigaController(),
    );
  }
}
