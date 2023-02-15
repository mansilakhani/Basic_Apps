import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('A Shadow Button'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.elliptical(16, 16)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.teal[500]!,
                  spreadRadius: 3,
                  blurRadius: 9,
                  offset: Offset(0, 2),
                )
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
