import 'package:flutter/material.dart';

import '../Constant/SizeConstant.dart';

class AppText extends StatelessWidget {
  final String text, fontFamily;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final double? letterSpacing;
  final double? height;
  final TextDecoration textDecoration;
  final TextAlign textAlign;
  final int maxLines;
  final FontStyle fontStyle;

  AppText(
    this.text, {
    this.fontSize = 14,
    this.color = Colors.black87,
    this.fontWeight = FontWeight.w500,
    this.fontFamily = 'Nunito',
    this.letterSpacing,
    this.textDecoration = TextDecoration.none,
    this.textAlign = TextAlign.start,
    this.height = 1.4,
    this.maxLines = 200000000,
    this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        height: height,
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
      ),
    );
  }
}
