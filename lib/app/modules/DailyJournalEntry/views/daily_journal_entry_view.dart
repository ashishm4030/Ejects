import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppWidgets/AppText.dart';
import '../../../../AppWidgets/customButton.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../controllers/daily_journal_entry_controller.dart';

class DailyJournalEntryView extends GetView<DailyJournalEntryController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText('Daily Journal Entry', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MySize.getScaledSizeHeight(5)),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.question.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20), vertical: MySize.getScaledSizeHeight(5)),
                      child: Column(
                        children: [
                          AppText(controller.question[index], fontSize: MySize.getScaledSizeHeight(17), fontWeight: FontWeight.w300, color: Colors.black),
                          SizedBox(height: MySize.getScaledSizeHeight(5)),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: AutoSizeTextField(
                              maxFontSize: 18,
                              minFontSize: 18,
                              minLines: 1,
                              controller: TextEditingController(),
                              maxLines: 10,
                              textAlign: TextAlign.left,
                              cursorColor: Colors.black,
                              style: TextStyle(color: Colors.black, fontSize: 18),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              SizedBox(height: MediaQuery.of(context).size.width * 0.15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(25)),
                child: CustomButton(
                  text: 'Post',
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              SizedBox(height: MySize.getScaledSizeHeight(20)),
            ],
          ),
        ));
  }
}
