import 'package:get/get.dart';

import '../controllers/formsubmit_controller.dart';

class FormsubmitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormsubmitController>(
      () => FormsubmitController(),
    );
  }
}
