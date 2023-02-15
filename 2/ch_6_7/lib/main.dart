import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Opened Doors'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 230,
            height: 230,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 40,
                  ),
                  vertical: BorderSide(
                    //color: Colors.white70,
                    color: Color(0xffb3b3b3),
                    width: 68,
                  )),
              shape: BoxShape.rectangle,
            ),
          ),
        ),
      ),
    ),
  );
}
