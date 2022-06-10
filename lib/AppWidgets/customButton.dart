import 'package:flutter/material.dart';

import '../Constant/SizeConstant.dart';
import 'AppText.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final double? height;
  final double? width;

  CustomButton({required this.text, required this.onTap, this.color = Colors.black, this.textColor = Colors.white, this.borderColor, this.height = 70, this.width});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
        child: Center(
          child: AppText(
            text,
            fontFamily: 'Nunito',
            fontSize: MySize.getScaledSizeHeight(22),
            color: textColor,
          ),
        ),
      ),
    );
  }
}
