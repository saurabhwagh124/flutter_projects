import 'package:flutter/material.dart';
import 'package:flutter_project_18/assignment18.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment18(),
    );
  }
}