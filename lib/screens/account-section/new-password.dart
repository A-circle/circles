import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// components goes here
import 'package:circles/components/Ctext-header.dart';
import 'package:circles/components/Cbutton-arrow-right.dart';
import 'package:circles/components/Ctextinput.dart';
import 'package:circles/components/Cbutton-text.dart';

// screens
import 'package:circles/screens/account-section/signin.dart';

class NewPassword extends StatefulWidget {
  NewPassword({Key key, this.emailOrPhone}) : super(key: key);

  final String emailOrPhone;

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
              text: "Forgot Password",
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(100),
            ),
            CTextInput(
              text: "New Password",
              obscureText: true,
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(25),
            ),
            CTextInput(
              text: "Repeat Password",
              obscureText: true,
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(25),
            ),
            CButtonText(
              text: "Resend Code",
              onPressed: () {
                print("signing up...");
              },
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(100),
            ),
            CButtonArrow(
              text: "Continue",
              onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignIn()));
              },
            )
          ],
        ),
      ),
    );
  }
}
