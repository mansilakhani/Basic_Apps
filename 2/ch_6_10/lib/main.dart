import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: InkWell(
            splashColor: Colors.red,
            onTap: () {
              print('tapped....');
            },
            child: Ink(
              color: Colors.amber,
              child: Container(
                alignment: Alignment.center, ,
                width: 220,
                height: 100,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
