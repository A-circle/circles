import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// components goes here
import 'package:circles/components/Ctext-header.dart';
import 'package:circles/components/Cbutton-arrow-right.dart';
import 'package:circles/components/Ctext-lower-bold.dart';
import 'package:circles/components/Ctext-lower.dart';
import 'package:circles/components/Ctextinput.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              text: "Login",
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(100),
            ),
            CTextInput(
              text: "Username, Email or Phone",
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
              height: ScreenUtil.getInstance().setHeight(15),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    child: CTextLowerBold(text: "Forgot Password"),
                    onTap: () {
                      print("forgot password");
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(25),
            ),
            GestureDetector(
              child: CTextLower(
                text: "Create Account ",
              ),
              onTap: () {
                print("creating new account up...");
              },
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
