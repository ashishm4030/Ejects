import 'package:ejects_getx/app/modules/NotificationScreen/views/notification_screen_view.dart';
import 'package:ejects_getx/app/modules/ProfileScreen/views/profile_screen_view.dart';
import 'package:ejects_getx/app/modules/SearchScreen/views/search_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';

class MainScreenController extends GetxController {
  //TODO: Implement MainScreenController

  var Selected = 0.obs;
  var Selected1 = 0.obs;
  List BottomIcon = ['assets/icon/Home.png', 'assets/icon/Search.png'];
  List BottomIcon1 = ['assets/icon/Notification.png', 'assets/icon/woman.png'];

  List<Widget> Screen = [
    HomeView(),
    SearchScreenView(),
    NotificationScreenView(),
    ProfileScreenView(),
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
