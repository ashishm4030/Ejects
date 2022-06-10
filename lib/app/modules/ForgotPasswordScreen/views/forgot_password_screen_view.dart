import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../../OtpVerifyScreen/views/otp_verify_screen_view.dart';
import '../controllers/forgot_password_screen_controller.dart';

class ForgotPasswordScreenView extends GetView<ForgotPasswordScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: AppText('Forgot Password', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
      ),
      body: GetBuilder<ForgotPasswordScreenController>(
        init: ForgotPasswordScreenController(),
        assignId: true,
        builder: (logic) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MySize.getScaledSizeHeight(10)),
                  Center(
                    child: AppText('Enter your email to reset your \n password.',
                        fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54, fontWeight: FontWeight.w300, textAlign: TextAlign.center),
                  ),
                  SizedBox(height: height * 0.04),
                  CustomTextField(label: 'Email', hintText: 'you@gmail.com'),
                  SizedBox(height: height * 0.1),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(25)),
                    child: CustomButton(
                      text: 'Send Recover Link',
                      onTap: () {
                        Get.toNamed(Routes.OTP_VERIFY_SCREEN, arguments: {'flag': 0});
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
