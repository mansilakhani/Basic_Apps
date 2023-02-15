import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wall(),
    ),
  );
}

class wall extends StatefulWidget {
  @override
  State<wall> createState() => _wallState();
}

class _wallState extends State<wall> {
  double w1 = 105; //105
  double w2 = 170; //170
  double w3 = 132; //132
  double w4 = 113; //113
  double h = 86; //80
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'THE WALL',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Step-1
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                      //Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w2,
                        color: Color(0xff5d4037),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                    ],
                  ),
                ),
              ),
              //Step-2
              Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            height: h,
                            width: w3,
                            color: Color(0xff5d4037),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 8),
                            height: h,
                            width: w4,
                            color: Color(0xff5d4037),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 8),
                            height: h,
                            width: w3,
                            color: Color(0xff5d4037),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //Step-3
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                      //Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w2,
                        color: Color(0xff5d4037),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                    ],
                  ),
                ),
              ),
              //Step-4
              Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            height: h,
                            width: w3,
                            color: Color(0xff5d4037),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 8),
                            height: h,
                            width: w4,
                            color: Color(0xff5d4037),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 8),
                            height: h,
                            width: w3,
                            color: Color(0xff5d4037),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //Step-5
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                      //Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w2,
                        color: Color(0xff5d4037),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                    ],
                  ),
                ),
              ),
              //Step-6
              Column(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            height: h,
                            width: w3,
                            color: Color(0xff5d4037),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 8),
                            height: h,
                            width: w4,
                            color: Color(0xff5d4037),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 8),
                            height: h,
                            width: w3,
                            color: Color(0xff5d4037),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //Step-7
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                      //Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w2,
                        color: Color(0xff5d4037),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8, top: 7),
                        height: h,
                        width: w1,
                        color: Color(0xff5d4037),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
