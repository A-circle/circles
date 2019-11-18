import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// components goes here
import 'package:circles/components/Ctext-header.dart';
import 'package:circles/components/Cbutton-arrow-right.dart';
import 'package:circles/components/Ctextinput.dart';

class SetupAccount extends StatefulWidget {
  SetupAccount({Key key}) : super(key: key);

  @override
  _SetupAccountState createState() => _SetupAccountState();
}

class _SetupAccountState extends State<SetupAccount> {
  String _fullName;
  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    //fill in the screen size of the device in the design
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height)
      ..init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(100),
            ),
            CTextHeader(
              text: "Create New Account",
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(100),
            ),
            CTextInput(
              text: "Full Name",
              obscureText: false,
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(15),
            ),
            CTextInput(
              text: "Username",
              obscureText: false,
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(15),
            ),
            CTextInput(
              text: "Password",
              obscureText: true,
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(100),
            ),
            CButtonArrow(
              text: "Continue",
              onPressed: () {
                print("login up...");
              },
            )
          ],
        ),
      ),
    );
  }
}
