import 'package:dotted_border/dotted_border.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../controllers/add_photo_screen_controller.dart';

class AddPhotoScreenView extends GetView<AddPhotoScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText(Get.arguments['flag'] == 1 ? 'Add Video' : 'Add Photo', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: GetBuilder<AddPhotoScreenController>(
          init: AddPhotoScreenController(),
          assignId: true,
          builder: (logic) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MySize.getScaledSizeHeight(20)),
                    AppText(
                      Get.arguments['flag'] == 1 ? 'Add Video' : 'Add Photo',
                      fontSize: MySize.getScaledSizeHeight(16),
                      color: Colors.black54,
                    ),
                    SizedBox(height: MySize.getScaledSizeHeight(5)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: BoxDecoration(color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Get.arguments['flag'] == 1 ? controller.pickVideo() : controller.pickImage();
                              },
                              child: controller.image == null
                                  ? Container(
                                      height: 45,
                                      width: 130,
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        radius: Radius.circular(12),
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Image.asset('assets/icon/Upload.png', scale: 4.5),
                                            SizedBox(width: 5),
                                            AppText('Upload', fontSize: MySize.getScaledSizeHeight(20), color: Colors.black54),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Get.arguments['flag'] == 1
                                      ? ClipRRect(
                                          borderRadius: BorderRadius.circular(16),
                                          child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height * 0.30,
                                              child: FlickVideoPlayer(flickManager: controller.flickManager!)),
                                        )
                                      : ClipRRect(
                                          borderRadius: BorderRadius.circular(16),
                                          child: Image.file(
                                            controller.image!,
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height * 0.30,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                        ],
                      ),
                    ),
                    SizedBox(height: MySize.getScaledSizeHeight(15)),
                    CustomTextField(label: 'Description', hintText: 'Type Here', height: controller.maxLines * 24.0, isCenter: 0),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.07),
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
