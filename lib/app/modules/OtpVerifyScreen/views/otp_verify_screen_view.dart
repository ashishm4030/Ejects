import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_verify_screen_controller.dart';

class OtpVerifyScreenView extends GetView<OtpVerifyScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText('Verification', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: GetBuilder<OtpVerifyScreenController>(
          init: OtpVerifyScreenController(),
          assignId: true,
          builder: (logic) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MySize.getScaledSizeHeight(10)),
                  Center(
                    child: AppText('Enter the 4 digit verification code sent \n to your email',
                        fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54, fontWeight: FontWeight.w300, textAlign: TextAlign.center),
                  ),
                  SizedBox(height: height * 0.04),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppText(
                          'Enter Code',
                          fontSize: MySize.getScaledSizeHeight(18),
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Pinput(
                            keyboardType: TextInputType.number,
                            closeKeyboardWhenCompleted: true,
                            length: 4,
                            showCursor: true,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            defaultPinTheme: PinTheme(
                              width: 60,
                              height: 60,
                              textStyle: TextStyle(
                                fontSize: MySize.getScaledSizeHeight(20),
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Nunito',
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF2F2F2),
                              ),
                            ),
                            // focusedPinTheme: focusedPinTheme,
                            submittedPinTheme: PinTheme(
                              width: 60,
                              height: 60,
                              textStyle: TextStyle(
                                fontSize: MySize.getScaledSizeHeight(20),
                                color: Colors.black,
                                fontFamily: 'Nunito',
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF2F2F2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icon/Path 199324.png', scale: 5),
                      SizedBox(width: 5),
                      AppText('Resend Code', fontSize: MySize.getScaledSizeHeight(18), color: Colors.black, fontWeight: FontWeight.w300, textAlign: TextAlign.center),
                    ],
                  ),
                  SizedBox(height: height * 0.08),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(40)),
                    child: CustomButton(
                      text: 'Continue',
                      onTap: () {
                        if (Get.arguments['flag'] == 1) {
                          Get.offAllNamed(Routes.MAIN_SCREEN);
                        } else {
                          Get.toNamed(Routes.RESET_PASSWORD_SCREEN);
                        }
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
