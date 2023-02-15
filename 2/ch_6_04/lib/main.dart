import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradient Button'),
          centerTitle: true,
          backgroundColor: Color(0xff48416a),
        ),
        backgroundColor: Color(0xff48416a),
        body: Align(
          alignment: Alignment.center,
          /*child: Container(
              height: 67,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.elliptical(50, 65)),
              ),*/
          child: Container(
            child: Container(
              height: 67,
              width: 190,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.6, 0),
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.blue,
                  ],
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(5, 5),
                  ),
                ],
                border: Border.all(
                  color: Colors.white54,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(50, 65)),
              ),
              child: Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    ),
  );
}
