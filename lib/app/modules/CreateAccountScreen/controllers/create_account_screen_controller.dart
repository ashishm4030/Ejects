import 'package:get/get.dart';

class CreateAccountScreenController extends GetxController {
  var selectedGender = 0.obs;
  List gender = [
    {'name': 'Female', 'image': 'assets/icon/Path 199320.png'},
    {'name': 'Male', 'image': 'assets/icon/Path 199321.png'},
    {'name': 'Other', 'image': 'assets/icon/Group 66428.png'},
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
