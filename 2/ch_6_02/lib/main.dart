import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dark Shadow Button'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        backgroundColor: Colors.black,
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 67,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.elliptical(18, 18)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffc44240),
                  //color: Color(0xf),
                  spreadRadius: 4,
                  blurRadius: 20,
                  // offset: Offset(-4, -4),
                ),
              ],
              shape: BoxShape.rectangle,
            ),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
