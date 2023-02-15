import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mix-up"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.bottomRight,
            width: 400,
            height: 400,
            color: Colors.blue,
            child: Container(
              width: 335,
              height: 360,
              color: Colors.yellowAccent,
              alignment: Alignment.bottomRight,
              child: Container(
                width: 300,
                height: 320,
                //color: Colors.pink[700],
                color: Colors.pink[600],
                alignment: Alignment(-1, -1),
                child: Container(
                  width: 260,
                  height: 280,
                  color: Colors.orange,
                  alignment: Alignment(-1, -1),
                  child: Container(
                    width: 220,
                    height: 240,
                    color: Colors.green,
                    child: Center(
                      child: Container(
                        width: 170,
                        height: 170,
                        color: Colors.greenAccent,
                      ),
                    ),
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
