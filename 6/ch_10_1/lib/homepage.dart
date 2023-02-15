import 'package:ch_10_1/compdetail.dart';
import 'package:ch_10_1/data.file.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MNC CEOs",
          style: TextStyle(
            fontSize: 22,
            letterSpacing: 2,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black12.withOpacity(0.10),
                Colors.black38,
              ]),
        ),
        child: ListView.builder(
            itemCount: Comp_Name.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white38.withOpacity(0.005),
                      spreadRadius: 3,
                      blurRadius: 2,
                      //  offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailScreen(
                              Comp_CeoName[index],
                              Comp_Name[index],
                              Com_logo[index],
                              Com_Ceoimg[index]);
                        },
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 7,
                      right: 7,
                    ),
                    child: Container(
                      height: 95,
                      width: double.infinity,
                      // / color: Colors.redAccent,
                      margin: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100, //120
                            width: 70,
                            child: Image.asset(
                              Com_logo[index],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            height: 95,
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                Text(
                                  Comp_Name[index],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  Comp_CeoName[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 25),
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              Com_Ceoimg[index],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
