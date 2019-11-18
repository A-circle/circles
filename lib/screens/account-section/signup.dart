import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// components goes here
import 'package:circles/components/Ctext-header.dart';
import 'package:circles/components/Cbutton-arrow-right.dart';
import 'package:circles/components/Ctext-lower-bold.dart';
import 'package:circles/components/Ctext-lower.dart';
import 'package:circles/components/Ctextinput.dart';

class CreateAccount extends StatefulWidget {
  CreateAccount({Key key, this.emailOrPhone}) : super(key: key);

  final String emailOrPhone;

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
            CTextInput(text: "Email or Phone",obscureText: false,),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(15),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CTextLower(
                    text: "Already have an account? ",
                  ),
                  GestureDetector(
                    child: CTextLowerBold(text: "Login"),
                    onTap: () {
                      print("already have account");
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(100),
            ),
            CButtonArrow(
              text: "Continue",
              onPressed: () {
                print("signing up...");
              },
            )
          ],
        ),
      ),
    );
  }
}
