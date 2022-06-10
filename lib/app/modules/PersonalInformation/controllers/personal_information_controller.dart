import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonalInformationController extends GetxController {
  File? image;
  String? fileName;
  pickImage() async {
    final pickedImage = await ImagePicker().getImage(source: ImageSource.gallery, imageQuality: 80);
    image = File(pickedImage!.path);
    if (image != null) {
      fileName = image!.path.split('/').last;
    }
    update();
  }

  var selectedGender = 0.obs;

  List gender = [
    {'name': 'Female', 'image': 'assets/icon/Path 199320.png'},
    {'name': 'Male', 'image': 'assets/icon/Path 199321.png'},
    {'name': 'Other', 'image': 'assets/icon/Group 66428.png'},
  ];

  final count = 0.obs;
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
  void increment() => count.value++;
}
