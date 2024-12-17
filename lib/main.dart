import 'package:flutter/material.dart';
import 'package:styling1/getting_started.dart';
import 'package:styling1/home_page.dart';
import 'package:styling1/item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Pizza Delivery",
      color: Colors.pinkAccent,
      home: GettingStarted(),


    );
  }
}