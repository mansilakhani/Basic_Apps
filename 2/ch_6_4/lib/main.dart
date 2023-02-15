import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mashal'),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 150,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.brown,
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.white,
                  width: 50,
                ),
                horizontal: BorderSide(
                  color: Color(0xff8D6E63),
                  width: 28,
                ),
              ),
              shape: BoxShape.rectangle,
            ),
            child: Container(
              alignment: Alignment(2, -3.6),
              child: Text(
                '🔥',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
