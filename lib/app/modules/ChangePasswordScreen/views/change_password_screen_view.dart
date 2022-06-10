import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../controllers/change_password_screen_controller.dart';

class ChangePasswordScreenView extends GetView<ChangePasswordScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: AppText('Change Password', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
          child: GetBuilder<ChangePasswordScreenController>(
            init: ChangePasswordScreenController(),
            assignId: true,
            builder: (logic) {
              return Column(
                children: [
                  SizedBox(height: MySize.getScaledSizeHeight(20)),
                  CustomTextField(label: 'Old Password', hintText: 'Old Password', obscureText: true, suffixVisibility: true),
                  SizedBox(height: MySize.getScaledSizeHeight(15)),
                  CustomTextField(label: 'New Password', hintText: 'New Password', obscureText: true, suffixVisibility: true),
                  SizedBox(height: MySize.getScaledSizeHeight(15)),
                  CustomTextField(label: 'Confirm New Password', hintText: 'Confirm New Password', obscureText: true, suffixVisibility: true),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(25)),
                    child: CustomButton(
                      text: 'Continue',
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
