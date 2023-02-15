import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MARVEL UNIVERSE',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            color: Color(0xffb6b1be),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff10002b),
      ),
      body: Container(
        color: Color(0xff240046),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 135,
                  height: 30,
                  color: Colors.orange,
                  margin: EdgeInsets.only(top: 55, left: 15),
                  child: Text(
                    "AVENGERS",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  // decoration: BoxDecoration(
                  //   color: Colors.purple,
                  //   borderRadius: BorderRadius.circular(5),
                  // ),

                  //
                  // ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 65,
                    left: 10,
                  ),
                  height: 300,
                  width: 235,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                      child: Image.asset("assets/images/fire-cracker.png")),
                ),
              ],
            )
          ],
        ),

        /*Container(
        color: const Color(0xff240046),
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Spacer(),
                  Container(
                    child: const Text(
                      'AVENGERS',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 0.85,
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 60, left: 20),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                // for (int i = 0; i < 5; i++)
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 68, left: 12),
                          height: 300,
                          width: 235,
                          child: RichText(
                            text: const TextSpan(
                              text: "Captain America",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              ),
                              children: [
                                TextSpan(
                                    text: "\nSteve Rogers",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white54),
                                  ),
                              ],
                            ),
                          ),
                          alignment: Alignment(-0.80, 0.65),
                          decoration: BoxDecoration(
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 8,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff591798), Color(0xff3e0a6e)],
                            ),
                          ),

                          //child: Row(
                          //children: [
                          //   Expanded(
                          //     child: Container(
                          //       alignment: const Alignment(0, -2),
                          //       margin: const EdgeInsets.only(left: 65),
                          //       child: Image.asset(
                          //         "assets/images/captain_america.png",
                          //         width: 110,
                          //       ),
                          //     ),
                          //   ),
                          //   Text(
                          //     "Captain",
                          //   )
                          // ],
                        ),
                      ],
                    ),

                    //),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),*/
      ),
    );
  }
}
