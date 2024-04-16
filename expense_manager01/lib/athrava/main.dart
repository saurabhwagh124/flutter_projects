import 'package:emp/Trash.dart';
import 'package:emp/categories.dart';
import 'package:emp/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //home: Firstpage()
      home: Trash(),
    );
  }
}
