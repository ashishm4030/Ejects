import 'package:get/get.dart';

import '../controllers/add_photo_screen_controller.dart';

class AddPhotoScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPhotoScreenController>(
      () => AddPhotoScreenController(),
    );
  }
}
