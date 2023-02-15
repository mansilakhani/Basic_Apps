import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dynamic(),
    ),
  );
}

class Dynamic extends StatefulWidget {
  @override
  State<Dynamic> createState() => _DynamicState();
}

class _DynamicState extends State<Dynamic> {
  double w = 372;
  double h = 80;

  int n = 0;

  void _incrementCounter() {
    setState(() {
      n++;
    });
  }

  void _decrementCounter() {
    setState(() {
      n--;
    });
  }

  //String myColor = 'Colors.white';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic List'),
        centerTitle: true,
        backgroundColor: const Color(0xff244d61),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.grey,
          //width: double.infinity,
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 1; i <= n; i++)
                    Container(
                      margin:
                          const EdgeInsets.only(left: 10, top: 3, bottom: 5),
                      width: w,
                      height: h,
                      child: Center(
                        child: Text(
                          '$i',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          color: (i % 2 != 0)
                              ? const Color(0xff75e2ff)
                              : const Color(0xff5689c0)),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            backgroundColor: const Color(0xff244d61),
            child: const Icon(Icons.add),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            backgroundColor: const Color(0xff244d61),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
