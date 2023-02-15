import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calc(),
    ),
  );
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  int x = 0;
  double w = 155;
  double h = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calc",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        backgroundColor: const Color(0xff54759e),
      ),
      body: Column(
        children: [
          // 0
          Container(
            margin: const EdgeInsets.only(top: 170),
            child: Center(
              child: Align(
                alignment: const Alignment(0, -1),
                child: Text(
                  "$x",
                  style: TextStyle(
                      fontSize: 65,
                      /* fontWeight: FontWeight.bold, */ color:
                          Colors.black38.withOpacity(0.4)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 54),
          // -2 & +2
          Container(
            margin: const EdgeInsets.only(left: 1),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        x -= 2;
                      });
                    },
                    child: Container(
                      height: h,
                      width: w,
                      child: const Center(
                        child: Text(
                          "- 2",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff54759e)),
                    ),
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    onTap: () {
                      setState(() {
                        x += 2;
                      });
                    },
                    child: Container(
                      height: h,
                      width: w,
                      child: const Center(
                        child: Text(
                          "+ 2",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff54759e)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          // -4 & +4
          Container(
            margin: const EdgeInsets.only(left: 1),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        x -= 4;
                      });
                    },
                    child: Container(
                      height: h,
                      width: w,
                      child: const Center(
                        child: Text(
                          "- 4",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff54759e)),
                    ),
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    onTap: () {
                      setState(() {
                        x += 4;
                      });
                    },
                    child: Container(
                      height: h,
                      width: w,
                      child: const Center(
                        child: Text(
                          "+ 4",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff54759e)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          InkWell(
            onTap: () {
              setState(() {
                x = 0;
              });
            },
            //clear
            child: Container(
              margin: const EdgeInsets.only(left: 0),
              height: h,
              width: w,
              child: const Center(
                child: Text(
                  "Clear",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff54759e)),
            ),
          ),
        ],
      ),
    );
  }
}
