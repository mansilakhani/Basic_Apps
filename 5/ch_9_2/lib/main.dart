import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Lottery_App(),
  ));
}

class Lottery_App extends StatefulWidget {
  const Lottery_App({Key? key}) : super(key: key);

  @override
  State<Lottery_App> createState() => _Lottery_AppState();
}

class _Lottery_AppState extends State<Lottery_App> {
  double H = 250;
  double w1 = 95;
  double h1 = 76;
  Color c1 = Color(0xff946b74);
  Color c2 = Color(0xffc79f93);
  //Color start_color = Color(0xff85586f);

  int t1 = 3;
  int t2 = 0;
  int t3 = 8;

  int n1 = 100;

  var bgColor = [Colors.pink];
  var appbarColor = [Colors.orange];
  var buttonColor = [Colors.pinkAccent];
  /*changeBackground() {
    Color color = Color.fromARGB(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
    setState(() {
      start_color = color;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    InkWell();
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Lottery App',
          ),
          centerTitle: true,
          backgroundColor:
              (t1 % 2 != 0) ? const Color(0xff946b74) : Color(0xffa1a433),
          //backgroundColor: ,
          // leadingWidth: 2,
          // leading: Icon(Icons.workspaces_outlined)),
          actions: [Icon(Icons.workspaces_outlined)]),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 78),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: H,
                //color: c1,
                color:
                    (t1 % 2 != 0) ? const Color(0xff946b74) : Color(0xffa1a433),

                child: Row(
                  children: [
                    InkWell(
                      onTap: box,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        alignment: Alignment.center,
                        width: w1,
                        height: h1,
                        child: Text(
                          "$t1",
                          style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        decoration: BoxDecoration(
                          // color: c2,
                          color: (t1 % 2 != 0)
                              ? Color(0xffc79f93)
                              : Color(0xffedd453),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                    InkWell(
                      onTap: box,
                      child: Container(
                        alignment: Alignment.center,
                        width: w1,
                        height: h1,
                        child: Text(
                          "$t2",
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          //color: c2,
                          color: (t1 % 2 != 0)
                              ? Color(0xffc79f93)
                              : Color(0xffedd453),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                    InkWell(
                      onTap: box,
                      child: Container(
                        alignment: Alignment.center,
                        width: w1,
                        height: h1,
                        child: Text(
                          "$t3",
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          //color: c2,
                          color: (t1 % 2 != 0)
                              ? Color(0xffc79f93)
                              : Color(0xffedd453),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          //const SizedBox(height: 135),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: box,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 65,
                  width: 140,
                  // color: (c2 == c2) ? Colors.red : Colors.indigo,
                  child: const Center(
                    child: Text(
                      'Get Lottery',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      // color: const Color(0xfff6e6c2),
                      color: (t1 % 2 != 0)
                          ? const Color(0xfff8ecd1)
                          : Color(0xffffef82),
                      border: Border.all(
                          color: (t1 % 2 != 0)
                              ? const Color(0xffac7d88)
                              : Color(0xffa1a433),
                          width: 2.5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 7,
                        ),
                      ]),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }

  void box() {
    Random random = Random();
    setState(() {
      Random random = Random();
      setState(() {
        t1 = random.nextInt(n1);
        t2 = random.nextInt(n1);
        t3 = random.nextInt(n1);
      });
    });
  }
}
