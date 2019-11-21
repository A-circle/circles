
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// components goes here
import 'package:circles/components/Ctext-header.dart';
import 'package:circles/components/Cbutton-arrow-right.dart';
import 'package:circles/components/Ctextinput.dart';
import 'package:circles/components/Cbutton-text.dart';

// screens
import 'package:circles/screens/account-section/forgot-password-verify.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key, this.emailOrPhone}) : super(key: key);

  final String emailOrPhone;

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              text: "Email or Phone",
              obscureText: false,
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
                    builder: (BuildContext context) => ForgotPasswordVerify()));
              },
            )
          ],
        ),
      ),
    );
  }
}
