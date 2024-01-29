import 'package:flutter/material.dart';
import 'package:stateful_app1/assignment1.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Assignment1(),
    );
  }
}
