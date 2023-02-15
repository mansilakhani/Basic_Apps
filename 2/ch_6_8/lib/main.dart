import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60,
            width: 400,
            color: Colors.orange,
            child: Text(
              "Emoji",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            alignment: Alignment.center,
          ),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 300, //250
            height: 300, //250
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              alignment: Alignment.topCenter,
              //alignment: Alignment(1, 1),
              child: Container(
                width: 230, //190
                height: 295, //250
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  alignment: Alignment(1.1, -1.1),
                  child: Container(
                    width: 235, //220
                    height: 260, //220
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      // alignment: const Alignment(-0.6, 0),
                      child: Align(
                        alignment: Alignment(-0.6, 0),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Align(
                            alignment: Alignment(2000, 0),
                            child: Container(
                              width: 69.9,
                              height: 69.9,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
