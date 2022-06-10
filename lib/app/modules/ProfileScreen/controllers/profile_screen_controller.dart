import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreenController extends GetxController {
  List image = [
    'assets/image/mingwei-lim-cAnnGu39QOI-unsplash.png',
    'assets/image/mingwei-lim-K5T3UMuc114-unsplash.png',
    'assets/image/rick-rothenberg-HUiWK-0OLLA-unsplash.png',
    'assets/image/rick-rothenberg-HUiWK-0OLLA-unsplash.png',
    'assets/image/mingwei-lim-K5T3UMuc114-unsplash.png',
    'assets/image/mingwei-lim-cAnnGu39QOI-unsplash.png',
    'assets/image/mingwei-lim-K5T3UMuc114-unsplash.png',
    'assets/image/rick-rothenberg-HUiWK-0OLLA-unsplash.png',
    'assets/image/mingwei-lim-cAnnGu39QOI-unsplash.png',
  ];
  List homeScreen = [
    {'flag': '1'},
    {'flag': '0'},
    {'flag': '1'},
  ];
  TabController? controller;
  var selectedTabIndex = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    // controller = TabController(vsync: this, length: 3);
    controller?.addListener(() {
      print('utsav satani');
      selectedTabIndex.value = controller!.index;
    });
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
