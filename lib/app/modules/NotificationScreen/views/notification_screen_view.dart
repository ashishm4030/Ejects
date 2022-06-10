import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../controllers/notification_screen_controller.dart';

class NotificationScreenView extends GetView<NotificationScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        body: GetBuilder<NotificationScreenController>(
      init: NotificationScreenController(),
      assignId: true,
      builder: (logic) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MySize.getScaledSizeHeight(20)),
                Center(child: Image.asset('$icon_url/Group 66491.png', scale: 5)),
                SizedBox(height: MySize.getScaledSizeHeight(20)),
                GroupedListView<dynamic, String>(
                  floatingHeader: false,
                  shrinkWrap: true,
                  elements: controller.notification,
                  groupBy: (element) => element['date'],
                  groupSeparatorBuilder: (String groupByValue) => Row(
                    children: [
                      AppText('$groupByValue', color: Colors.black, fontSize: MySize.getScaledSizeHeight(16)),
                    ],
                  ),
                  itemBuilder: (context, dynamic element) {
                    return Padding(
                      padding: EdgeInsets.only(top: MySize.getScaledSizeHeight(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppText(
                                        'Lorem Ipsum',
                                        fontSize: MySize.getScaledSizeHeight(18),
                                        color: Colors.black,
                                        maxLines: 1,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      AppText(
                                        '10:30 am',
                                        fontSize: MySize.getScaledSizeHeight(12),
                                        color: Colors.black54,
                                        maxLines: 1,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: MySize.getScaledSizeHeight(5)),
                                  AppText('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                      fontSize: MySize.getScaledSizeHeight(15), color: Colors.black54, maxLines: 4, fontWeight: FontWeight.w400),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: MySize.getScaledSizeHeight(10)),
                        ],
                      ),
                    );
                  },
                  order: GroupedListOrder.DESC,
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
