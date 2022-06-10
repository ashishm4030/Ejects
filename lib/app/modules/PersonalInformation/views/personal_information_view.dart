import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../controllers/personal_information_controller.dart';

class PersonalInformationView extends GetView<PersonalInformationController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText('Personal Information', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: GetBuilder<PersonalInformationController>(
          init: PersonalInformationController(),
          assignId: true,
          builder: (logic) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MySize.getScaledSizeHeight(20)),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        controller.image == null
                            ? Container(
                                height: 150,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset('assets/icon/woman.png', scale: 2.5),
                                ),
                              )
                            : Container(
                                height: 150,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(borderRadius: BorderRadius.circular(150), child: Image.file(controller.image!, fit: BoxFit.cover, height: 130, width: 130)),
                                ),
                              ),
                        Positioned(
                            bottom: 0,
                            child: GestureDetector(
                              onTap: () {
                                controller.pickImage();
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(40)),
                                child: Image.asset('assets/icon/Camera.png', scale: 6, color: Colors.black),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: MySize.getScaledSizeHeight(10)),
                    CustomTextField(label: 'First Name', hintText: 'First Name'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Last Name', hintText: 'Last Name'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Email', hintText: 'you@gmail.com'),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    AppText('Gender', fontSize: MySize.getScaledSizeHeight(16), color: Colors.black54),
                    SizedBox(height: MySize.getScaledSizeHeight(5)),
                    SizedBox(
                      height: 60,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.gender.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisExtent: 60),
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
                                    SizedBox(width: MySize.getScaledSizeWidth(5)),
                                    AppText("${controller.gender[index]['name']}",
                                        fontSize: MySize.getScaledSizeHeight(20), color: controller.selectedGender.value == index ? Colors.white : Colors.black54),
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 15),
                    CustomTextField(label: 'Location', hintText: 'Enter Location'),
                    SizedBox(height: 15),
                    AppText('Age', fontSize: MySize.getScaledSizeHeight(16), color: Colors.black54),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextField1(keyboardType: TextInputType.number, hintText: 'Month', width: width * 0.28),
                        CustomTextField1(keyboardType: TextInputType.number, hintText: 'Day', width: width * 0.28),
                        CustomTextField1(keyboardType: TextInputType.number, hintText: 'Year', width: width * 0.28),
                      ],
                    ),
                    SizedBox(height: height * 0.04),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: CustomButton(
                        text: 'Save',
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
