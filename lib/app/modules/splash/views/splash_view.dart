import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../Constant/Contsant.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<SplashController>(
          init: SplashController(),
          assignId: true,
          builder: (logic) {
            return Container(
              height: height,
              width: width,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/icon/BG.png'))),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.65,
                    child: Image.asset('$icon_url/Group 66491.png', scale: 3.2),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
