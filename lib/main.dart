import 'package:flutter/material.dart';

import 'components/Cbutton-arrow-right.dart';
import 'components/Ctext-header.dart';
import 'package:circles/components/Ctext-lower.dart';
import 'package:circles/components/Ctext-medium.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CButtonArrow(
              onPressed: () {
                print("hello world");
              },
              text: "continue",
            ),
            CTextHeader(text: "I'm the heading",),
            CTextLower(text: "I'm the lower",),
            CTextMedium(text: "I'm the medium",)
          ],
        ),
      ),
    );
  }
}
