import 'package:get/get.dart';

import '../controllers/add_link_screen_controller.dart';

class AddLinkScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddLinkScreenController>(
      () => AddLinkScreenController(),
    );
  }
}
