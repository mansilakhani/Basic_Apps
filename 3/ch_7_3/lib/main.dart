import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flutter(),
    ),
  );
}

class flutter extends StatefulWidget {
  @override
  State<flutter> createState() => _flutterState();
}

class _flutterState extends State<flutter> {
  double w = 135;
  double h = 135;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Icons',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Row-1
            Container(
              //color: Colors.amber,
              //alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      //padding: EdgeInsets.only(left: 2, top: 2),
                      height: h,
                      width: w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                        /* boxShadow: <BoxShadow>[
                         BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 15,
                          ),
                        ],*/
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      //alignment: Alignment.center,
                      height: h,
                      width: w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.album_rounded,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      //alignment: Alignment.center,
                      height: h,
                      width: w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      alignment: Alignment.center,
                      height: h,
                      width: w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      alignment: Alignment.center,
                      height: h,
                      width: w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: const Icon(
                        Icons.alarm,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                //Row-2
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 10),
                          //padding: EdgeInsets.only(left: 2, top: 2),
                          height: h,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.verified_user,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 10),
                          //padding: EdgeInsets.only(left: 2, top: 2),
                          height: h,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.account_circle_rounded,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 10),
                          //padding: EdgeInsets.only(left: 2, top: 2),
                          height: h,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.wifi_protected_setup_sharp,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 10),
                          //padding: EdgeInsets.only(left: 2, top: 2),
                          height: h,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.shuffle,
                            size: 30,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    //Row-3
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 5, top: 10),
                              //padding: EdgeInsets.only(left: 2, top: 2),
                              height: h,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: const Icon(
                                Icons.more,
                                size: 30,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.only(left: 5, top: 10),
                              //padding: EdgeInsets.only(left: 2, top: 2),
                              height: h,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: const Icon(
                                Icons.more_vert,
                                size: 30,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.only(left: 5, top: 10),
                              //padding: EdgeInsets.only(left: 2, top: 2),
                              height: h,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: const Center(
                                child: Text(
                                  '↕',
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        //Row-4
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5, top: 10),
                                  //padding: EdgeInsets.only(left: 2, top: 2),
                                  height: h,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: const Icon(
                                    Icons.call,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 5, top: 10),
                                  //padding: EdgeInsets.only(left: 2, top: 2),
                                  height: h,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: const Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 5, top: 10),
                                  //padding: EdgeInsets.only(left: 2, top: 2),
                                  height: h,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: const Icon(
                                    Icons.warning_amber_outlined,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 5, top: 10),
                                  //padding: EdgeInsets.only(left: 2, top: 2),
                                  height: h,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: const Icon(
                                    Icons.stop,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  margin: EdgeInsets.only(left: 5, top: 10),
                                  //padding: EdgeInsets.only(left: 2, top: 2),
                                  height: h,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: const Icon(
                                    Icons.play_arrow_sharp,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            //Row-5
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 5, top: 10),
                                      //padding: EdgeInsets.only(left: 2, top: 2),
                                      height: h,
                                      width: w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.2),
                                      ),
                                      child: const Icon(
                                        Icons.apps_sharp,
                                        size: 30,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      margin: EdgeInsets.only(left: 5, top: 10),
                                      //padding: EdgeInsets.only(left: 2, top: 2),
                                      height: h,
                                      width: w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.2),
                                      ),
                                      child: const Icon(
                                        Icons.workspaces_outline,
                                        size: 30,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 5, top: 10),
                                      //padding: EdgeInsets.only(left: 2, top: 2),
                                      height: h,
                                      width: w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.2),
                                      ),
                                      child: const Icon(
                                        Icons.wifi_lock_sharp,
                                        size: 30,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
