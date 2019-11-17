import 'package:flutter/material.dart';

class CTextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 45,right: 45),
        child: Container(
          width: 320,
          child: Center(
            child: TextField(
        style: TextStyle(
          fontSize: 20,
          height: 0.1
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