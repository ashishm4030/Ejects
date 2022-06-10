import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../../CreateAccountScreen/views/create_account_screen_view.dart';
import '../../ForgotPasswordScreen/views/forgot_password_screen_view.dart';
import '../../MainScreen/views/main_screen_view.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GetBuilder<LoginScreenController>(
        init: LoginScreenController(),
        assignId: true,
        builder: (logic) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.18,
                      child: Image.asset('$icon_url/Group 66491.png', scale: 5),
                    ),
                    CustomTextField(label: 'Email', hintText: 'Enter Email Address'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Password', hintText: 'Password', obscureText: true, suffixVisibility: true),
                    SizedBox(height: MySize.getScaledSizeHeight(10)),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.FORGOT_PASSWORD_SCREEN, arguments: {'flag': 1});
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: AppText("Forget Password?", textAlign: TextAlign.end, fontSize: MySize.getScaledSizeHeight(16)),
                      ),
                    ),
                    SizedBox(height: height * 0.07),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(25)),
                      child: CustomButton(
                        text: 'Login',
                        onTap: () {
                          Get.offAllNamed(Routes.MAIN_SCREEN);
                        },
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    AppText("Don't have an account yet?", textAlign: TextAlign.end, fontSize: MySize.getScaledSizeHeight(16), color: Colors.black54),
                    SizedBox(height: 10),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.CREATE_ACCOUNT_SCREEN);
                        },
                        child: AppText("Create Account", textAlign: TextAlign.end, fontSize: MySize.getScaledSizeHeight(18), textDecoration: TextDecoration.underline)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
