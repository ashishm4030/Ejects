import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customTextFiled.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../controllers/comment_screen_controller.dart';

class CommentScreenView extends GetView<CommentScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText('Comments', fontSize: 28, fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: GetBuilder<CommentScreenController>(
          init: CommentScreenController(),
          assignId: true,
          builder: (logic) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20), vertical: MySize.getScaledSizeHeight(5)),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 30.0),
                                    child: AppText('1 hours ago', fontSize: MySize.getScaledSizeHeight(14), fontWeight: FontWeight.w300, color: Colors.black54),
                                  ),
                                ],
                              ),
                              SizedBox(height: MySize.getScaledSizeHeight(5)),
                              AppText('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                  fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                              SizedBox(height: MySize.getScaledSizeHeight(7)),
                              index == 2 ? Container() : Divider(color: Colors.grey, thickness: 0.5)
                            ],
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
                  child: CustomTextField1(
                    hintText: 'Write your comment here...',
                    suffixVisibility: false,
                    prefftext: Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Image.asset('assets/icon/Send.png', scale: 5),
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
