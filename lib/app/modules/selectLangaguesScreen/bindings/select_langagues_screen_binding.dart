import 'package:get/get.dart';

import '../controllers/select_langagues_screen_controller.dart';

class SelectLangaguesScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectLangaguesScreenController>(
      () => SelectLangaguesScreenController(),
    );
  }
}
