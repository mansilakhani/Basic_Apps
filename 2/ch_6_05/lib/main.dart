import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("An Indian Flag"),
          centerTitle: true,
          backgroundColor: Color(0xff2391ee),
        ),
        body: Container(
          child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff2391ee),
                    //Color(0xff3c57bb),
                    // Color(0xff3a5cbf),
                    Colors.indigo,
                  ],
                ),
              ),
              child: Center(
                child: Container(
                  width: 300,
                  height: 18----0,
                  alignment: Alignment.center,
                  child: Text(
                    "*",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.indigo,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.deepOrange[800]!,
                        Colors.white,
                        Colors.green[900]!,
                      ],
                    ),
                    border: Border.all(color: Colors.white),
                  ),
                ),
              )),
        ),
      ),
    ),
  );
}
