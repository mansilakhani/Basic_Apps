import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gallery(),
    ),
  );
}

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);
  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  var img_1 = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
  ];
  var img_2 = [

      /*  "https://unsplash.com/photos/hq6nVLvoGrE",
	"https://unsplash.com/photos/AJj_JfXcCJU",
         "https://unsplash.com/photos/AkjUervXxYk",
         "https://unsplash.com/photos/AkjUervXxYk",
          "https://unsplash.com/photos/SfHPkG6_N70",*/

    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/10.jpg",
  ];
  var change = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        actions: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                (change == 0) ? change = 1 : change = 0;
              });
            },
            child: const Icon(
              Icons.apps_outlined,
              color: Colors.white70,
              size: 26,
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          "GALLERY VIEWER",
          style: TextStyle(
            letterSpacing: 2.5,
            color: Colors.white70,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: (change == 0) ? Axis.vertical : Axis.horizontal,
        child: (change == 0)
            ? Column(
                children: [
                  Column(
                    children: img_1.map((e) {
                      return Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 4),
                          height: 250,
                          width: 385,
                          child: Image.asset(
                            e,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Column(
                    children: img_2.map((e) {
                      return Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 4),
                          height: 250,
                          width: 385,
                          child: Image.network(
                            e,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              )
            : Row(
                children: [
                  Row(
                    children: img_1.map((e) {
                      return Center(
                        child: Container(
                          margin: const EdgeInsets.only(right: 6),
                          height: 700,
                          width: 397,
                          child: Image.asset(
                            e,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    children: img_2.map((e) {
                      return Center(
                        child: Container(
                          margin: const EdgeInsets.only(right: 6),
                          height: 700,
                          width: 397,
                          //child: Image.network
                          child: Image.asset(
                            e,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
      ),
    );
  }
}
