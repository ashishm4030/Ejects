import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../selectLangaguesScreen/views/select_langagues_screen_view.dart';

class SplashController extends GetxController {
  startTimer() {
    Timer(
      Duration(seconds: 3),
      () => Get.offAllNamed(Routes.SELECT_LANGAGUES_SCREEN),
    );
  }

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
