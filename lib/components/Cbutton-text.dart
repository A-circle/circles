import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CButtonText extends StatelessWidget {
  // callback function when button is on pressed
  final GestureTapCallback onPressed;
  final String text;

  CButtonText({@required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    //fill in the screen size of the device in the design
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height)
      ..init(context);

    return ButtonTheme(
      minWidth: ScreenUtil.getInstance().setWidth(100),
      height: ScreenUtil.getInstance().setHeight(40),
      child: RaisedButton(
        color: Colors.black54,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: ScreenUtil(allowFontScaling: true).setSp(19),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
