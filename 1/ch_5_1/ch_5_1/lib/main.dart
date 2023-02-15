import 'package:flutter/material.dart';

void main() {
  String appName = "Flutter App";

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            appName,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: const Icon(Icons.menu, color: Colors.black),
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Red & White',
            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
              decorationColor: Colors.amber,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
