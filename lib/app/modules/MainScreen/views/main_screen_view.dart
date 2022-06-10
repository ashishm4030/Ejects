import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        GetBuilder<MainScreenController>(
          init: MainScreenController(),
          assignId: true,
          builder: (logic) {
            return Obx(() {
              return Scaffold(
                body: SafeArea(child: controller.Screen[controller.Selected.value]),
                extendBody: true,
                bottomNavigationBar: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 2),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(
                          2,
                          (index) => Container(
                            child: GestureDetector(
                              onTap: () {
                                controller.Selected.value = index;
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    controller.BottomIcon[index],
                                    height: 28,
                                    color: controller.Selected.value == index ? Colors.black87 : Colors.black87.withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.20,
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(
                          2,
                          (index) => Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                index == 1
                                    ? GestureDetector(
                                        onTap: () {
                                          controller.Selected.value = 3;
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: controller.Selected.value == 3
                                              ? BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(20), border: Border.all(width: 1, color: Colors.black))
                                              : BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(20)),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/icon/woman.png",
                                              height: 28,
                                            ),
                                          ),
                                        ),
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          controller.Selected.value = 2;
                                        },
                                        child: Image.asset(
                                          controller.BottomIcon1[index],
                                          height: 28,
                                          color: controller.Selected.value == 2 ? Colors.black87 : Colors.black87.withOpacity(0.5),
                                        ),
                                      ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
          },
        ),
        Positioned(
          bottom: 45,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              SizedBox(height: MySize.getScaledSizeHeight(10)),
                              InkWell(
                                onTap: () async {
                                  Navigator.pop(context);
                                  shareFeedDialog(context);
                                },
                                child: Container(
                                  height: 40,
                                  child: Center(
                                    child: AppText(
                                      'Share to Home Feed',
                                      color: Colors.black,
                                      fontSize: MySize.getScaledSizeHeight(18),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 3),
                              Divider(),
                              InkWell(
                                onTap: () {
                                  Get.back();
                                  Get.toNamed(Routes.DAILY_JOURNAL_ENTRY);
                                },
                                child: Container(
                                  height: 40,
                                  child: Center(
                                    child: AppText(
                                      'Daily Journal Entry',
                                      color: Colors.black,
                                      fontSize: MySize.getScaledSizeHeight(18),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            child: AppText(
                              "Cancel",
                              color: Colors.black,
                              fontSize: MySize.getScaledSizeHeight(18),
                            ),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Image.asset(
              "assets/icon/Group 66492.png",
              height: 50,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> shareFeedDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            insetPadding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
            content: ShareFeedDialogScreen(),
          );
        });
      },
    );
  }
}

class ShareFeedDialogScreen extends StatefulWidget {
  const ShareFeedDialogScreen({Key? key}) : super(key: key);

  @override
  _ShareFeedDialogScreenState createState() => _ShareFeedDialogScreenState();
}

class _ShareFeedDialogScreenState extends State<ShareFeedDialogScreen> {
  List feedType = [
    {'image': 'assets/icon/Icon awesome-link.png', 'name': 'Link'},
    {'image': 'assets/icon/Camera.png', 'name': 'Photo'},
    {'image': 'assets/icon/Video.png', 'name': 'Video'}
  ];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            AppText("Share to Home Feed", color: Colors.black, fontSize: MySize.getScaledSizeHeight(24), fontWeight: FontWeight.bold),
            SizedBox(height: 30),
            SizedBox(
              height: 120,
              child: GridView.builder(
                itemCount: feedType.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 15, mainAxisExtent: 130),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                          if (index == 0) {
                            Get.toNamed(Routes.ADD_LINK_SCREEN);
                          } else if (index == 1) {
                            Get.toNamed(Routes.ADD_PHOTO_SCREEN, arguments: {'flag': 0});
                          } else {
                            Get.toNamed(Routes.ADD_PHOTO_SCREEN, arguments: {'flag': 1});
                          }
                        },
                        child: Container(
                          height: 85,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(14)),
                          child: Image.asset("${feedType[index]['image']}", scale: 5.5),
                        ),
                      ),
                      AppText("${feedType[index]['name']}", fontSize: MySize.getScaledSizeHeight(20), color: Colors.black54),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
