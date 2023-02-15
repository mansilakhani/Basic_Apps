import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var newIcons = Icons.chevron_left;
  var newColors = Colors.black;
  var Deco = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: const <BoxShadow>[
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 5,
        blurRadius: 15,
      ),
    ],
  );
  List myColors = <Color>[
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.blueAccent,
    Colors.blue,
    Colors.indigo,
    Colors.pinkAccent,
    Colors.tealAccent,
    Colors.red,
  ];
  List myIcons = <IconData>[
    Icons.add_outlined,
    Icons.album,
    Icons.chevron_left,
    Icons.chevron_right,
    Icons.access_alarm,
    Icons.call,
    Icons.search_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Icons Editor",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black12.withOpacity(0.1),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                height: 240,
                width: 370,
                child: Center(
                  child: Icon(
                    newIcons,
                    size: 75,
                    color: newColors,
                  ),
                ),
                decoration: Deco,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 50,
              width: 370,
              child: const Center(
                child: Text(
                  "Select Color",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              decoration: Deco,
            ),
            const SizedBox(height: 12),
            Container(
              height: 120,
              width: 370,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: Deco,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: myColors.map((e) {
                    int i = myColors.indexOf(e);
                    return InkWell(
                      onTap: () {
                        setState(() {
                          newColors = e;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                        ),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: myColors[i],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ), // colors row
            const SizedBox(height: 12),
            Container(
              height: 50,
              width: 370,
              child: const Center(
                child: Text(
                  "Select Color",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              decoration: Deco,
            ),
            const SizedBox(height: 12),
            Container(
              height: 120,
              width: 370,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: Deco,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: myIcons.map((icon) {
                    int i = myIcons.indexOf(icon);
                    return InkWell(
                      onTap: () {
                        setState(() {
                          newIcons = icon;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                            ),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black38,
                                  spreadRadius: 0.1,
                                  offset: Offset(0, 0),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Icon(icon, size: 40),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ), // icons row
          ],
        ),
      ),
    );
  }
}
