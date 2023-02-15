import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splitter(),
    ),
  );
}

class splitter extends StatefulWidget {
  const splitter({Key? key}) : super(key: key);
  @override
  State<splitter> createState() => _splitterState();
}

class _splitterState extends State<splitter> {
  double w1 = 500;
  double h1 = 800;
  double w2 = 90;
  double h2 = 310;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SPLITTER ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: const Color(0xff212121),
        centerTitle: true,
      ),
      body: Container(
        height: h1,
        width: w1,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffff9800),
            Color(0xffff5722),
          ],
        )),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    for (int i = 1; i <= 5; i++)
                      Container(
                        margin: const EdgeInsets.only(
                          top: 7,
                          left: 8,
                          right: 8,
                          bottom: 12,
                        ),
                        height: 90,
                        width: double.infinity,
                        color: Colors.amber,
                        child: Center(
                          child: Text(
                            "$i",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
//fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 4; i <= 10; i++)
                      Container(
                        margin: const EdgeInsets.only(
                          top: 3,
                          left: 10,
                          right: 10,
                        ),
                        width: w2,
                        height: h2,
                        //color: Colors.amber,
                        color: const Color(0xffadadad).withOpacity(0.9),
                        child: Center(
                          child: Text(
                            "$i",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
