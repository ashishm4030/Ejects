import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../../CommentScreen/views/comment_screen_view.dart';
import '../controllers/search_screen_controller.dart';

class SearchScreenView extends GetView<SearchScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: GetBuilder<SearchScreenController>(
        init: SearchScreenController(),
        assignId: true,
        builder: (logic) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MySize.getScaledSizeHeight(20)),
                  Center(child: Image.asset('$icon_url/Group 66491.png', scale: 5)),
                  SizedBox(height: MySize.getScaledSizeHeight(15)),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(18), fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(18), fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
                          border: InputBorder.none,
                          prefixIcon: Image.asset(
                            'assets/icon/Search (1).png',
                            scale: 6,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  AppText('Top key words', fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54),
                  SizedBox(height: MySize.getScaledSizeHeight(5)),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.keyWords.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 55,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: Colors.grey.shade300, width: 1.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              controller.keyWords[index],
                              fontSize: MySize.getScaledSizeHeight(18),
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: MySize.getScaledSizeHeight(10)),
                  AppText('Today\'s miscellaneous question', fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54),
                  SizedBox(height: MySize.getScaledSizeHeight(5)),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: Colors.grey.shade300, width: 1.5)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.question.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(10)),
                            child: Column(
                              children: [
                                AppText(controller.question[index], fontSize: MySize.getScaledSizeHeight(17), fontWeight: FontWeight.w300, color: Colors.black54),
                                SizedBox(height: MySize.getScaledSizeHeight(15)),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: MySize.getScaledSizeHeight(10)),
                  AppText('What people are talking about today', fontSize: MySize.getScaledSizeHeight(18), color: Colors.black54),
                  SizedBox(height: MySize.getScaledSizeHeight(5)),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
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
                                SizedBox(height: MySize.getScaledSizeHeight(10)),
                                AppText('1.Lorem Ipsum is simply dummy text of the printing.', fontSize: MySize.getScaledSizeHeight(18), fontWeight: FontWeight.w300),
                                SizedBox(height: MySize.getScaledSizeHeight(10)),
                                AppText(
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
                                        Image.asset('assets/icon/Subtraction 3.png', scale: 5.5),
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
                                AppText('8 hours ago', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                              ],
                            ));
                      }),
                  SizedBox(height: MySize.getScaledSizeHeight(10)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
