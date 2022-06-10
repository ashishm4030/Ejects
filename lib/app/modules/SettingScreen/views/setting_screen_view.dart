import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../AppWidgets/AppText.dart';
import '../../../../Constant/Contsant.dart';
import '../../../../Constant/SizeConstant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/setting_screen_controller.dart';

class SettingScreenView extends GetView<SettingScreenController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: AppText('Settings', fontSize: MySize.getScaledSizeHeight(28), fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('$icon_url/Arrow - Left.png', scale: 5)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(20)),
            child: Column(
              children: [
                SizedBox(height: MySize.getScaledSizeHeight(15)),
                SettingTile(
                  image: 'assets/icon/Profile.png',
                  text: 'Personal Information',
                  onTap: () {
                    Get.toNamed(Routes.PERSONAL_INFORMATION);
                  },
                ),
                SettingTile(
                  image: 'assets/icon/Lock.png',
                  text: 'Change Password',
                  onTap: () {
                    Get.toNamed(Routes.CHANGE_PASSWORD_SCREEN);
                  },
                ),
                SettingTile(
                  image: 'assets/icon/Subtraction 7.png',
                  text: 'Terms And Conditions',
                  onTap: () {},
                ),
                SettingTile(
                  image: 'assets/icon/Shield Done.png',
                  text: 'Privacy Policy',
                  onTap: () {},
                ),
                SettingTile(
                  image: 'assets/icon/Logout.png',
                  text: 'Logout',
                  flag: 1,
                  onTap: () {
                    logoutDialog(context);
                  },
                ),
              ],
            ),
          ),
        ));
  }

  logoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(10),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
            content: Container(
              height: 240,
              width: MediaQuery.of(context).size.width * .90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(50)),
                    child: Image.asset('assets/icon/Logout.png', scale: 4),
                  ),
                  SizedBox(height: 20),
                  AppText("Are you sure you want a Logout?", fontSize: MySize.getScaledSizeHeight(16), color: Colors.black, fontWeight: FontWeight.w400),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width * .32,
                          height: 50,
                          child: FlatButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: AppText("No", fontSize: MySize.getScaledSizeHeight(18), color: Colors.black, fontWeight: FontWeight.bold))),
                      Container(
                          decoration: BoxDecoration(color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width * .32,
                          height: 50,
                          child: FlatButton(
                              onPressed: () {
                                Get.offAllNamed(Routes.LOGIN_SCREEN);
                              },
                              child: AppText("Yes", fontSize: MySize.getScaledSizeHeight(18), color: Colors.black, fontWeight: FontWeight.bold))),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}

class SettingTile extends StatefulWidget {
  final String? image;
  final String? text;
  final int flag;
  final void Function()? onTap;
  const SettingTile({Key? key, this.image, this.text, this.flag = 0, this.onTap}) : super(key: key);

  @override
  _SettingTileState createState() => _SettingTileState();
}

class _SettingTileState extends State<SettingTile> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Column(
      children: [
        InkWell(
          onTap: widget.onTap,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), border: Border.all(width: 1, color: Colors.grey.shade400)),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Image.asset(widget.image!, scale: 5.5),
                ),
              ),
              SizedBox(width: MySize.getScaledSizeWidth(15)),
              AppText(widget.text!, fontSize: MySize.getScaledSizeHeight(20), fontWeight: FontWeight.w300),
              Spacer(),
              widget.flag == 0 ? Icon(Icons.arrow_forward_ios, size: 22) : Container(),
            ],
          ),
        ),
        widget.flag == 0 ? SizedBox(height: MySize.getScaledSizeHeight(10)) : Container(),
        widget.flag == 0 ? Divider(thickness: 0.5, color: Colors.grey.shade400) : Container(),
        widget.flag == 0 ? SizedBox(height: MySize.getScaledSizeHeight(10)) : Container(),
      ],
    );
  }
}
