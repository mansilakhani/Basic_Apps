import 'package:flutter/material.dart';

void main() {
  dynamic red = Colors.redAccent;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My RNW"),
          centerTitle: true,
          backgroundColor: red,
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
                text: 'Red & White',
                style: TextStyle(
                  fontSize: 55,
                  letterSpacing: 3,
                  wordSpacing: 6,
                  color: red,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  height: 0.83,
                ),
                children: const [
                  TextSpan(
                    text: '\nMultimedia Education',
                    style: TextStyle(
                      fontSize: 26,
                      letterSpacing: 1,
                      wordSpacing: 1,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: '\nShaping "skills" for "scaling" higher...!!!',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      letterSpacing: 1,
                      wordSpacing: 1,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ]),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
