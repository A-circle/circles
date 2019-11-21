import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

// components goes here
import 'package:circles/components/Cbutton-arrow-right.dart';
import 'package:circles/components/Ctext-medium.dart';

// screens
import 'package:circles/screens/account-section/signup.dart';

class GettingStarted extends StatefulWidget {
  GettingStarted({Key key}) : super(key: key);

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

List<String> images = [
  "assets/images/1.jpeg",
  "assets/images/2.jpeg",
  "assets/images/3.jpeg"
];

List child = map<Widget>(
  images,
  (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.asset(i),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'No. $index image',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

class _GettingStartedState extends State<GettingStarted> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    //fill in the screen size of the device in the design
    ScreenUtil.instance = ScreenUtil(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height)
      ..init(context);

    return Scaffold(
      body: SingleChildScrollView(
              child: Column(children: <Widget>[
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(60),
          ),
          Padding(
            padding: EdgeInsets.only(left: 265),
            child: GestureDetector(
              child: CTextMedium(text: "Explore"),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(25),
          ),
          Container(
            child: CarouselSlider(
              viewportFraction: 0.95,
              // items: child,
              items: images.map((image) {
                return Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.asset(image, fit: BoxFit.fill, width: 1000),
                  ),
                );
              }).toList(),
              enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 1,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(
              images,
              (index, url) {
                return Container(
                  // indicates width and height
                  width: 25.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 3.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4)),
                );
              },
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          CButtonArrow(
            text: "Continue",
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => CreateAccount()));
            },
          )
        ]),
      ),
    );
  }
}
