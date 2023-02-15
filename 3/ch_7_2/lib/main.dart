import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Map(),
    ),
  );
}

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  List Icons_Name = <String>[
    "Exit",
    "Play",
    "Pause",
    "Stop",
    "Close",
    "Delete",
    "Email",
  ];

  List Icons2 = const <IconData>[
    Icons.exit_to_app,
    Icons.play_arrow_sharp,
    Icons.pause,
    Icons.stop,
    Icons.cancel,
    Icons.delete,
    Icons.email,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: Container(
        // color: Colors.black38.withOpacity(0.2),
        color: Colors.grey.withOpacity(0.3),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(children: [
              Expanded(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: Icons_Name.map((e) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 7),
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        color: Color(0xffefefef),
                        height: 85,
                        // width: double.infinity,
                        child: Container(
                          child: Text(
                            e,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList()),
              ),
              Expanded(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: Icons2.map((e) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 7),
                        padding: EdgeInsets.only(left: 155),
                        alignment: Alignment.centerLeft,
                        color: Color(0xffefefef),
                        height: 85,
                        // width: double.infinity,

                        child: Icon(
                          e,
                          size: 25,
                        ),
                      ),
                    ],
                  );
                }).toList()),
              ),
            ])),
      ),
    );
  }
}
