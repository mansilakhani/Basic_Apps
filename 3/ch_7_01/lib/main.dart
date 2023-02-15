import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    ),
  );
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BOLT',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
            letterSpacing: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: Colors.amber[600],
                height: double.infinity,
              ),
            ),
            Container(
                color: Colors.black87,
                width: 90,
                child: const Center(
                  child: Text(
                    '⚡',
                    style: TextStyle(
                      fontSize: 68,
                    ),
                  ),
                )),
            Expanded(
              child: Container(
                color: Colors.amber[600],
                height: double.infinity,
              ),
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.black87,
    );
  }
}
