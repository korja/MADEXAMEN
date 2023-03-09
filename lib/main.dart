import 'package:flutter/material.dart';
import 'package:madexam/pages/HomePage.dart';
import 'package:madexam/pages/Navbottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StraksNl',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NavBottom(),
    );
  }
}
