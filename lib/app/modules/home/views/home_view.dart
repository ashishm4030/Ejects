import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../../CommentScreen/views/comment_screen_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
        assignId: true,
        builder: (logic) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MySize.getScaledSizeHeight(20)),
                Center(child: Image.asset('$icon_url/Group 66491.png', scale: 5)),
                SizedBox(height: MySize.getScaledSizeHeight(15)),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.homeScreen.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20), vertical: MySize.getScaledSizeHeight(12)),
                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(15), vertical: MySize.getScaledSizeHeight(12)),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 4,
                            ),
                          ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icon/woman.png', scale: 5),
                                  SizedBox(width: MySize.getScaledSizeWidth(10)),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText('Lorraine Blanda', fontSize: MySize.getScaledSizeHeight(18), fontWeight: FontWeight.w500),
                                      SizedBox(height: MySize.getScaledSizeHeight(3)),
                                      AppText('Mayotte', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              controller.homeScreen[index]['flag'] == '1'
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(14),
                                      child: Image.asset(
                                        'assets/icon/HomeScreen.png',
                                      ))
                                  : AppText(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                      fontSize: MySize.getScaledSizeHeight(16),
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w300),
                              SizedBox(height: MySize.getScaledSizeHeight(10)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                          onTap: () {},
                                          child:
                                              Image.asset(controller.homeScreen[index]['isLike'] == '1' ? 'assets/icon/Subtraction 3.png' : 'assets/icon/Heart.png', scale: 5.5)),
                                      AppText(' 180', fontSize: MySize.getScaledSizeHeight(15), fontWeight: FontWeight.w300, color: Colors.black54),
                                      SizedBox(width: MySize.getScaledSizeWidth(10)),
                                      GestureDetector(
                                          onTap: () {
                                            Get.toNamed(Routes.COMMENT_SCREEN);
                                          },
                                          child: Image.asset('assets/icon/Chat.png', scale: 5.5)),
                                      GestureDetector(
                                          onTap: () {
                                            Get.toNamed(Routes.COMMENT_SCREEN);
                                          },
                                          child: AppText(' 87', fontSize: MySize.getScaledSizeHeight(15), fontWeight: FontWeight.w300, color: Colors.black54)),
                                      SizedBox(width: MySize.getScaledSizeWidth(10)),
                                      Image.asset('assets/icon/Send-1.png', scale: 5.5),
                                    ],
                                  ),
                                  Image.asset('assets/icon/Subtraction 2.png', scale: 5.5)
                                ],
                              ),
                              SizedBox(height: MySize.getScaledSizeHeight(10)),
                              AppText('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                  fontSize: MySize.getScaledSizeHeight(17), fontWeight: FontWeight.w300),
                              AppText('#bar #ejects', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.blue.withOpacity(0.7)),
                              AppText('8 hours ago', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                            ],
                          ));
                    })
              ],
            ),
          );
        },
      ),
    );
  }
}
