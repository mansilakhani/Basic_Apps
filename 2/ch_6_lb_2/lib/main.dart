import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent[100],
        ),
        //backgroundColor: Colors.black,
        body: Container(
          alignment: Alignment.center,
          child: InkWell(
            splashColor: Colors.yellowAccent,
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
                    Colors.blue,
                    Colors.purpleAccent,
                    //Colors.purple,
                  ],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
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
