import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextHeader extends StatelessWidget {
  final String text;

  CTextHeader({this.text});

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
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
      )
    );
  }
}
