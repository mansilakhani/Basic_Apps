import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        backgroundColor: Colors.black,
        body: Container(
          alignment: Alignment.center,
          child: InkWell(
            splashColor: Colors.indigo,
            onTap: () {
              print("tapped.....");
            },
            child: Ink(
              width: 200,
              height: 80,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepOrangeAccent,
                    Colors.white,
                    Colors.green,
                    //Colors.purple,
                  ],
                ),
                //borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.indigo,
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
