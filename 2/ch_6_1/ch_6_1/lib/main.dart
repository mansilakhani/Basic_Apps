import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  String myAppTitle = 'My App';
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('$myAppTitle'),
          backgroundColor: const Color(0xff7cb342),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.center,
            //width: 400,
            //height: 400,
            width: double.infinity,
            height: double.infinity,
            color: Colors.lightGreen[700],
            child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 300,
              color: Colors.green[500],
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                color: Colors.lightGreenAccent,
                child: Text(
                  'oooo',
                  style: TextStyle(
                    fontSize: 155,
                    fontWeight: FontWeight.w300,
                    //  wordSpacing: -1.50,
                    letterSpacing: -39,
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
