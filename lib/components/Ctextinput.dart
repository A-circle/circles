import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //fill in the screen size of the device in the design
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height)
      ..init(context);


    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 45,right: 45),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(320),
          child: Center(
            child: TextField(
        style: TextStyle(
          fontSize: ScreenUtil(allowFontScaling: true).setSp(19),
          height: ScreenUtil.getInstance().setHeight(0.8)
        ),
        decoration: InputDecoration(
          fillColor: Colors.white70,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
        keyboardType: TextInputType.text,
      
      ),
          ) 
          
        ) 
      ),
    );
  }
}