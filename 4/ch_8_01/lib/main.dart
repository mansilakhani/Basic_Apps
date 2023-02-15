import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: stack_App(),
    ),
  );
}

class stack_App extends StatefulWidget {
  const stack_App({Key? key}) : super(key: key);

  @override
  State<stack_App> createState() => _stack_AppState();
}

class _stack_AppState extends State<stack_App> {
  double w1 = 178;
  double h1 = 178;

  double w2 = 100;
  double h2 = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Stack App',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffbfbfbf).withOpacity(0.0),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Positioned(
                    top: 30,
                    left: 30,
                    height: h1,
                    width: w1,
                    child: Container(
                      width: 180,
                      height: 180,
                      alignment: Alignment(-0.8, -0.9),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Purple',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 62,
                left: 60,
                height: h1,
                width: w1,
                child: Container(
                  width: w2,
                  height: h2,
                  alignment: Alignment(-0.8, -0.9),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Indigo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 94,
                left: 90,
                height: h1,
                width: w1,
                child: Container(
                  width: w2,
                  height: h2,
                  alignment: Alignment(-0.8, -0.9),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'LightBlue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 123,
                left: 120,
                height: h1,
                width: w1,
                child: Container(
                  width: w2,
                  height: h2,
                  alignment: Alignment(-0.8, -0.9),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Green',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 152,
                left: 150,
                height: h1,
                width: w1,
                child: Container(
                  width: w2,
                  height: h2,
                  alignment: Alignment(-0.8, -0.9),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Amber',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 181,
                left: 180,
                height: h1,
                width: w1,
                child: Container(
                  width: w2,
                  height: h2,
                  alignment: Alignment(-0.8, -0.9),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade400,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Orange',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 214,
                left: 210,
                height: h1,
                width: w1,
                child: Container(
                  width: w2,
                  height: h2,
                  alignment: Alignment(-0.8, -0.9),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'RedAccent',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
