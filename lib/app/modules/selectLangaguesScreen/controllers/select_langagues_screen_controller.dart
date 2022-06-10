import 'package:get/get.dart';

class SelectLangaguesScreenController extends GetxController {
  var selectedValue = ''.obs;
  List<String> items = [
    'Spanish',
    'English',
    'Russian',
    'Japanese',
    'Polish',
  ].obs;

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
