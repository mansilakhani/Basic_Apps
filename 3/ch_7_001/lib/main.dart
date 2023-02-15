import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TODO_App(),
    ),
  );
}

class TODO_App extends StatefulWidget {
  const TODO_App({Key? key}) : super(key: key);

  @override
  State<TODO_App> createState() => _TODO_AppState();
}

int i = 9;
String? todo;
String time = "AM";
String hint = "Enter Your To-Do Here...";

class _TODO_AppState extends State<TODO_App> {
  //double n = 7;
  Map map = {
    '$i:00\n$time': todo,
  };

  // void _incrementCounter() {
  //   setState(() {
  //     n++;
  //   });
  // }
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do App'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                print(map);
              },
              child: Icon(Icons.apps),
            ),
          )
          //Icon(Icons.apps_sharp)
        ],
        backgroundColor: Color(0xFFff5722),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: map.entries.map((e) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 4, top: 14),
                  alignment: Alignment.center,
                  height: 61,
                  width: 70,
                  child: Text("${e.key}"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 3),
                Container(
                  margin: EdgeInsets.only(left: 4, top: 14),
                  alignment: Alignment(2, -0.1),
                  height: 61,
                  width: 305,
                  child: TextField(
                    // "$hint",
                    onChanged: (text) {
                      todo = text;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "$hint",
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
                // Expanded(
                //   child: Container(
                //     margin: EdgeInsets.only(right: 8),
                //     child: TextField(
                //       onChanged: (text) {
                //         todo = text;
                //       },
                //       decoration: InputDecoration(
                //         hintText: "$hint",
                //       ),
                //     ),
                //   ),
                // ),
              ],
            );
          }).toList(),
          // for (int i = 9; i <= 12; i++)
          // Container(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       Container(
          //         margin: EdgeInsets.only(left: 4, top: 6),
          //         alignment: Alignment.center,
          //         height: 70,
          //         width: 70,
          //         child: Text("$i:00\n$time"),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(6),
          //           border: Border.all(
          //             color: Colors.black,
          //           ),
          //         ),
          //       ),
          //       SizedBox(width: 3),
          //       Container(
          //         margin: EdgeInsets.only(left: 4, top: 6),
          //         alignment: Alignment.center,
          //         height: 70,
          //         width: 305,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(6),
          //           border: Border.all(
          //             color: Colors.black,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (i < 13) {
            map['${i++}:00\n$time'] = todo;
          } else {
            i = 1;
            time = 'PM';
            map['${i++}:00\n$time'] = todo;
          }
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xffff5722),
      ),

      // floatingActionButton: FloatingActionButton(
      //   //onPressed: _incrementCounter,
      //    backgroundColor: Color(0xFFff5722),
      //    child: Icon(Icons.add),
      //  ),
    );
  }
}
