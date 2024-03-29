import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextInput extends StatelessWidget {
  CTextInput({Key key, this.text, this.obscureText}) : super(key: key);

  final bool obscureText;
  final String text;

  @override
  Widget build(BuildContext context) {
    //fill in the screen size of the device in the design
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height)
      ..init(context);

    return Container(
      height: ScreenUtil.getInstance().setHeight(55),
      padding: EdgeInsets.only(left: 45, right: 45),
      child: TextFormField(
        // maxLines: null,
        obscureText: obscureText,
        style: TextStyle(
            fontSize: ScreenUtil(allowFontScaling: true).setSp(19),
            height: ScreenUtil.getInstance().setHeight(1),
            color: Colors.black),
        decoration: InputDecoration(
          labelStyle: TextStyle(
              fontSize: ScreenUtil(allowFontScaling: true).setSp(16)),
          labelText: text,
          fillColor: Colors.white70,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
