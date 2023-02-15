import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('3D Cube'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 220,
            width: 220,
            decoration: BoxDecoration(
              //color: Colors.teal[600],
              color: Color(0xff009688),
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Color(0xff4db6ac),
                  width: 30,
                ),
                vertical: BorderSide(
                  color: Color(0xff33aba0),
                  width: 45,
                ),
              ),
              // shape: BoxShape.rectangle,
            ),
          ),
        ),
      ),
    ),
  );
}
