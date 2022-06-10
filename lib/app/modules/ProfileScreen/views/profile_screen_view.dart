import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: GetBuilder<ProfileScreenController>(
        init: ProfileScreenController(),
        assignId: true,
        builder: (logic) {
          return DefaultTabController(
            initialIndex: 0,
            length: 3,
            child: Column(
              children: [
                SizedBox(height: MySize.getScaledSizeHeight(20)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Image.asset('$icon_url/Group 66491.png', scale: 5),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.SETTING_SCREEN);
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), border: Border.all(width: 1, color: Colors.grey.shade400)),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset('assets/icon/Setting.png', scale: 5.5),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MySize.getScaledSizeHeight(25)),
                Image.asset(
                  'assets/icon/woman.png',
                  scale: 2.5,
                ),
                SizedBox(height: MySize.getScaledSizeHeight(5)),
                AppText('Lorraine Blanda 22', fontSize: MySize.getScaledSizeHeight(18), fontWeight: FontWeight.w500),
                AppText('Female', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icon/Location.png', scale: 5),
                    SizedBox(width: MySize.getScaledSizeWidth(5)),
                    AppText('Mayotte', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                  ],
                ),
                SizedBox(height: MySize.getScaledSizeHeight(5)),
                Obx(() {
                  return SizedBox(
                    height: 50,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(bottom: BorderSide(color: Colors.grey.shade400, width: 1)),
                      ),
                      child: TabBar(
                        isScrollable: false,
                        physics: NeverScrollableScrollPhysics(),
                        onTap: (value) {
                          controller.selectedTabIndex.value = value;
                        },
                        controller: controller.controller,
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(child: Image.asset(controller.selectedTabIndex.value == 0 ? 'assets/icon/Image -1.png' : 'assets/icon/Image 2.png', scale: 5)),
                          Tab(child: Image.asset(controller.selectedTabIndex.value == 1 ? 'assets/icon/Edit-1.png' : 'assets/icon/Edit.png', scale: 5)),
                          Tab(child: Image.asset(controller.selectedTabIndex.value == 2 ? 'assets/icon/Bookmark-2.png' : 'assets/icon/Bookmark-1.png', scale: 5)),
                        ],
                      ),
                    ),
                  );
                }),
                SizedBox(height: MySize.getScaledSizeHeight(5)),
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: controller.controller,
                    children: [
                      GridView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.image.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 100,
                            child: Image.asset(
                              controller.image[index],
                              width: MediaQuery.of(context).size.width,
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20), vertical: MySize.getScaledSizeHeight(15)),
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
                                        Image.asset('assets/icon/Bookmark.png', scale: 5.5)
                                      ],
                                    ),
                                    SizedBox(height: MySize.getScaledSizeHeight(10)),
                                    AppText('8 hours ago', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                                  ],
                                ));
                          }),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.homeScreen.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20), vertical: MySize.getScaledSizeHeight(15)),
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
                                    AppText('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                        fontSize: MySize.getScaledSizeHeight(18), fontWeight: FontWeight.w300),
                                    AppText('#bar #ejects', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.blue.withOpacity(0.7)),
                                    AppText('8 hours ago', fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, color: Colors.black54),
                                  ],
                                ));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
