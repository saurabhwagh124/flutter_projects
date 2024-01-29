import 'package:flutter/material.dart';
import 'package:instagram__demo/assignment4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, ////  no debug strip
      home: Assignment4(),
    );
  }
}

