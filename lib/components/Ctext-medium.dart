import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextMedium extends StatelessWidget {
  final String text;

  CTextMedium({this.text});

  @override
  Widget build(BuildContext context) {
    //fill in the screen size of the device in the design
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height)
      ..init(context);

    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: ScreenUtil(allowFontScaling: true).setSp(21),
      )
    );
  }
}
