import 'package:ch_10_01/screens/detailpage.dart';
import 'package:ch_10_01/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homepage',
    routes: {
      'homepage': (context) => Homepage(),
      'detailpage': (context) => DetailPage(),
    },
  ));
}
