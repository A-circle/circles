import 'package:flutter/material.dart';

// screens go here
// import 'package:circles/screens/account-section/signup.dart';
// import 'package:circles/screens/account-section/signup-verify.dart';
// import 'package:circles/screens/account-section/setup-account.dart';
// import 'package:circles/screens/account-section/signin.dart';
import 'package:circles/screens/account-section/forgot-password-login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ForgotPasswordLogin(),
    );
  }
}
