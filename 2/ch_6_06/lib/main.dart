import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Watch"),
          backgroundColor: const Color(0xff48416a),
        ),
        body: Container(
          // width: double.infinity,
          // height: double.infinity,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff48416a),
                  Colors.blue,
                ],
                begin: Alignment(5, -0.9),
                end: Alignment(5, 1),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 75,
                width: 220,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white38,
                    width: 0.5,
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment(5, 0),
                    end: Alignment(-6, 0.8),
                    colors: [
                      Color(0xff4d77ab),
                      Color(0xff436da1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 6,
                      color: Colors.black12,
                      // color: Color(0xff436da1),
                      // color: Color(0xff4d77ab),
                      offset: Offset(5, 5),
                    )
                  ],
                ),
                child: const Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
