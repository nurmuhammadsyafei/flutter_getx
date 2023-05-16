import 'package:get/get.dart';

import '../controllers/datepicker_controller.dart';

class DatepickerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatepickerController>(
      () => DatepickerController(),
    );
  }
}
