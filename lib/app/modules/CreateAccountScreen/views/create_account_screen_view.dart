import 'package:ejects_getx/app/modules/LoginScreen/views/login_screen_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../../OtpVerifyScreen/views/otp_verify_screen_view.dart';
import '../controllers/create_account_screen_controller.dart';

class CreateAccountScreenView extends GetView<CreateAccountScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: AppText('Create Account', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
      ),
      body: GetBuilder<CreateAccountScreenController>(
          init: CreateAccountScreenController(),
          builder: (logic) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MySize.getScaledSizeHeight(10)),
                    Center(
                        child: AppText('Enter your information to create \n your Ejects account.',
                            fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54, fontWeight: FontWeight.w300, textAlign: TextAlign.center)),
                    SizedBox(height: height * .02),
                    CustomTextField(label: 'First Name', hintText: 'First Name'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Last Name', hintText: 'Last Name'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    AppText('Gender', fontSize: 16, color: Colors.black54),
                    SizedBox(height: MySize.getScaledSizeHeight(5)),
                    SizedBox(
                      height: 60,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.gender.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 60,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Obx(() {
                            return GestureDetector(
                              onTap: () {
                                controller.selectedGender.value = index;
                              },
                              child: Container(
                                decoration:
                                    BoxDecoration(color: controller.selectedGender.value == index ? Colors.black : Color(0xffF2F2F2), borderRadius: BorderRadius.circular(14)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("${controller.gender[index]['image']}",
                                        scale: 5.5, color: controller.selectedGender.value == index ? Colors.white : Colors.black54),
                                    SizedBox(width: 5),
                                    AppText("${controller.gender[index]['name']}",
                                        fontSize: MySize.getScaledSizeHeight(18), color: controller.selectedGender.value == index ? Colors.white : Colors.black54),
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                      ),
                    ),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Location', hintText: 'Enter Location'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    AppText('Age', fontSize: MySize.getScaledSizeHeight(16), color: Colors.black54),
                    SizedBox(height: MySize.getScaledSizeHeight(5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextField1(keyboardType: TextInputType.number, hintText: 'Month', width: width * 0.28),
                        CustomTextField1(keyboardType: TextInputType.number, hintText: 'Day', width: width * 0.28),
                        CustomTextField1(keyboardType: TextInputType.number, hintText: 'Year', width: width * 0.28),
                      ],
                    ),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Email', hintText: 'Enter Email Address'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Password', hintText: 'Password', obscureText: true, suffixVisibility: true),
                    SizedBox(height: height * 0.06),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(25)),
                      child: CustomButton(
                        text: 'Continue',
                        onTap: () {
                          Get.toNamed(Routes.OTP_VERIFY_SCREEN, arguments: {'flag': 1});
                        },
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Center(
                        child: AppText('Already have an account?',
                            fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54, fontWeight: FontWeight.w300, textAlign: TextAlign.center)),
                    SizedBox(height: 5),
                    GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.LOGIN_SCREEN);
                        },
                        child: Center(child: AppText("Sign In", textAlign: TextAlign.end, fontSize: MySize.getScaledSizeHeight(18), textDecoration: TextDecoration.underline))),
                    SizedBox(height: height * 0.04),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
