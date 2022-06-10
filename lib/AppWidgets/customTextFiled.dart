import 'package:flutter/material.dart';

import '../Constant/SizeConstant.dart';
import 'AppText.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    this.image,
    this.obscureText = false,
    this.hintText,
    this.suffixIcon,
    this.suffixVisibility = false,
    this.prefftext,
    this.label,
    this.width,
    this.keyboardType,
    this.height = 60,
    this.isCenter = 1,
  });

  final String? image;
  final String? hintText;
  final double? width;
  final double height;
  final label;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  bool suffixVisibility;
  final Widget? prefftext;
  final int isCenter;
  bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          widget.label,
          fontSize: MySize.getScaledSizeHeight(16),
          color: Colors.black54,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(16),
          ),
          height: widget.height,
          width: widget.width,
          child: widget.isCenter == 1
              ? Center(
                  child: TextField(
                    keyboardType: widget.keyboardType,
                    obscureText: widget.obscureText,
                    style: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, fontFamily: 'Nunito'),
                      suffixIcon: widget.suffixVisibility == false
                          ? widget.prefftext
                          : Visibility(
                              visible: widget.suffixVisibility,
                              child: widget.suffixVisibility == true
                                  ? InkWell(
                                      onTap: toggle,
                                      child: Image.asset(
                                        widget.obscureText ? 'assets/icon/Show.png' : 'assets/icon/Hide.png',
                                        scale: 5,
                                        color: Colors.black,
                                      ),
                                    )
                                  : SizedBox()),
                      border: InputBorder.none,
                    ),
                  ),
                )
              : TextField(
                  keyboardType: widget.keyboardType,
                  obscureText: widget.obscureText,
                  style: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w300, fontFamily: 'Nunito'),
                    suffixIcon: widget.suffixVisibility == false
                        ? widget.prefftext
                        : Visibility(
                            visible: widget.suffixVisibility,
                            child: widget.suffixVisibility == true
                                ? InkWell(
                                    onTap: toggle,
                                    child: Image.asset(
                                      widget.obscureText ? 'assets/icon/Show.png' : 'assets/icon/Hide.png',
                                      scale: 4.5,
                                      color: Colors.black,
                                    ),
                                  )
                                : SizedBox()),
                    border: InputBorder.none,
                  ),
                ),
        ),
      ],
    );
  }
}

class CustomTextField1 extends StatefulWidget {
  CustomTextField1({
    this.image,
    this.obscureText = false,
    this.hintText,
    this.suffixIcon,
    this.suffixVisibility = false,
    this.prefftext,
    this.label,
    this.width,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines = 1,
  });

  final String? image;
  final String? hintText;
  final double? width;
  final int maxLines;
  final int minLines;
  final TextInputType? keyboardType;
  final label;
  final Widget? suffixIcon;
  bool suffixVisibility;
  final Widget? prefftext;
  bool obscureText;

  @override
  State<CustomTextField1> createState() => _CustomTextField1State();
}

class _CustomTextField1State extends State<CustomTextField1> {
  toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(16),
      ),
      height: 60,
      width: widget.width,
      child: Center(
        child: TextField(
          minLines: widget.maxLines,
          maxLines: widget.maxLines,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          style: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.black54, fontSize: MySize.getScaledSizeHeight(16), fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
            suffixIcon: widget.suffixVisibility == false
                ? widget.prefftext
                : Visibility(
                    visible: widget.suffixVisibility,
                    child: widget.suffixVisibility == true
                        ? InkWell(
                            onTap: toggle,
                            child: Image.asset(
                              widget.obscureText ? 'assets/icon/Show.png' : 'assets/icon/Hide.png',
                              scale: 4.5,
                              color: Colors.black,
                            ),
                          )
                        : SizedBox()),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
