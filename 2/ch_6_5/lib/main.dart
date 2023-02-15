import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Letter Cover'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green,
              //color: Color(0xff4caf50),
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.green,
                  //color: Color(0xff4caf50),
                  width: 110,
                ),
                horizontal: BorderSide(
                  //color: Colors.green[300]!,
                  color: Color(0xff72c075),
                  width: 109,
                ),
              ),
              shape: BoxShape.rectangle,
            ),
          ),
        ),
      ),
    ),
  );
}
