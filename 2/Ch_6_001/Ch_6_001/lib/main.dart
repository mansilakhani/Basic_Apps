import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Open_Close_door(),
    ),
  );
}

class Open_Close_door extends StatefulWidget {
  @override
  State<Open_Close_door> createState() => _Open_Close_doorState();
}

class _Open_Close_doorState extends State<Open_Close_door> {
  double w1 = 75;
  double w2 = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open-Close Doors'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              setState(
                () {
                  w1 = 109;
                  w2 = 0;
                },
              );
            },
            onDoubleTap: () {
              setState(() {
                w1 = 75;
                w2 = 30;
              });
            },
            child: Ink(
              child: Container(
                width: 220,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                    left: BorderSide(
                      color: Colors.white70,
                      width: w1,
                    ),
                    right: BorderSide(
                      color: Colors.white70,
                      width: w1,
                    ),
                    top: BorderSide(
                      color: Colors.black,
                      width: w2,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: w2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
