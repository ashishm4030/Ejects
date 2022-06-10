import 'package:ejects_getx/app/modules/LoginScreen/views/login_screen_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/reset_password_screen_controller.dart';

class ResetPasswordScreenView extends GetView<ResetPasswordScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText('Reset Password', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: GetBuilder<ResetPasswordScreenController>(
          init: ResetPasswordScreenController(),
          assignId: true,
          builder: (logic) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MySize.getScaledSizeHeight(10)),
                  Center(
                    child: AppText('Create your new password and continue \n to login',
                        fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54, fontWeight: FontWeight.w300, textAlign: TextAlign.center),
                  ),
                  SizedBox(height: height * 0.04),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
                    child: Column(
                      children: [
                        CustomTextField(label: 'New Password', hintText: 'New Password', obscureText: true, suffixVisibility: true),
                        SizedBox(height: MySize.getScaledSizeHeight(15)),
                        CustomTextField(label: 'Confirm New Password', hintText: 'Confirm New Password', obscureText: true, suffixVisibility: true),
                        SizedBox(height: height * 0.12),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(25)),
                          child: CustomButton(
                            text: 'Continue',
                            onTap: () {
                              Get.offAllNamed(Routes.LOGIN_SCREEN);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
