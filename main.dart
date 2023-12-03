import 'package:flutter/material.dart';



import 'HomePage.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Emergency.Leb",
      home: HomePage(),
    );
  }
}
