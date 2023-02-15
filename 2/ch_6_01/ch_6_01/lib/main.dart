import 'package:flutter/material.dart';

void main() {
  String myAppTitle = 'Launch Button';
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('$myAppTitle'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.black,
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xff00D91D),
                  // color: Color(0xff0c6809),

                  spreadRadius: 6,
                  blurRadius: 25,
                  //offset: Offset(-4, -4),
                ),
              ],
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              'GO',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
