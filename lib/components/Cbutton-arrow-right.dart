import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CButtonArrow extends StatelessWidget {
  // callback function when button is on pressed
  final GestureTapCallback onPressed;
  final String text;

  CButtonArrow({@required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    
    //fill in the screen size of the device in the design
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height)
      ..init(context);

    return ButtonTheme(
      minWidth: ScreenUtil.getInstance().setWidth(100),
      height: ScreenUtil.getInstance().setHeight(50),
      child: RaisedButton(
        color: Colors.black54,
        onPressed: onPressed,
        child: Container(
          width: ScreenUtil.getInstance().setWidth(150),
          height: ScreenUtil.getInstance().setHeight(50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil(allowFontScaling: true).setSp(19),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
