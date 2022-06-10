import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../../LoginScreen/views/login_screen_view.dart';
import '../controllers/select_langagues_screen_controller.dart';

class SelectLangaguesScreenView extends GetView<SelectLangaguesScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<SelectLangaguesScreenController>(
          init: SelectLangaguesScreenController(),
          assignId: true,
          builder: (logic) {
            return Obx(() {
              return Column(
                children: [
                  SizedBox(height: MySize.getScaledSizeHeight(20)),
                  AppText('Select Language', fontSize: MySize.getScaledSizeHeight(28)),
                  SizedBox(height: MySize.getScaledSizeHeight(20)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Select Language',
                                  style: TextStyle(fontSize: MySize.getScaledSizeHeight(18), fontFamily: 'Nunito', fontWeight: FontWeight.w500, color: Colors.black87),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: controller.items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: TextStyle(fontSize: MySize.getScaledSizeHeight(16), fontFamily: 'Nunito', fontWeight: FontWeight.w500, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: controller.selectedValue.value == '' ? null : controller.selectedValue.value,
                          onChanged: (value) {
                            controller.selectedValue.value = value.toString();
                          },
                          icon: Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.black87),
                          buttonHeight: 60,
                          buttonWidth: MySize.screenWidth,
                          buttonPadding: EdgeInsets.only(left: 14, right: 14),
                          buttonDecoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Color(0xffF2F2F2)),
                          itemHeight: 35,
                          itemPadding: EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 250,
                          dropdownWidth: MySize.screenWidth * 0.90,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Color(0xffF2F2F2)),
                          dropdownElevation: 0,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: CustomButton(
                      text: 'Continue',
                      onTap: () {
                        Get.toNamed(Routes.LOGIN_SCREEN);
                      },
                    ),
                  ),
                  SizedBox(height: MySize.getScaledSizeHeight(30)),
                ],
              );
            });
          },
        ),
      ),
    );
  }
}
