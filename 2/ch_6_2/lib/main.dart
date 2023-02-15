import 'package:flutter/material.dart';

void main() {
  String myAppTitle = 'Mission of RNW';
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('$myAppTitle'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 105,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.red[100],
              border: Border(
                left: BorderSide(
                  color: Colors.redAccent,
                  width: 10,
                ),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: 'Shaping "skills" for "scaling" higher',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3e3131),
                    ),
                    children: [
                      TextSpan(
                        text: '\n- RNW',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff524141),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
