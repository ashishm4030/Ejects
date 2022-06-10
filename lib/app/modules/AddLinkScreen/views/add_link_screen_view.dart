import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../controllers/add_link_screen_controller.dart';

class AddLinkScreenView extends GetView<AddLinkScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText('Add Link', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: GetBuilder<AddLinkScreenController>(
          init: AddLinkScreenController(),
          assignId: true,
          builder: (logic) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: MySize.getScaledSizeHeight(20)),
                    CustomTextField(label: 'Add Link', hintText: 'ejects.com/'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(
                      label: 'Description',
                      hintText: 'Type Here',
                      height: controller.maxLines * 30.0,
                      isCenter: 0,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: CustomButton(
                        text: 'Post',
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
