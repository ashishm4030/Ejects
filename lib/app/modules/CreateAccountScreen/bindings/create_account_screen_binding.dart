import 'package:get/get.dart';

import '../controllers/create_account_screen_controller.dart';

class CreateAccountScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAccountScreenController>(
      () => CreateAccountScreenController(),
    );
  }
}
