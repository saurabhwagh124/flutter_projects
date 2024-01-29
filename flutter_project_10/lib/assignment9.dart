import 'package:flutter/material.dart';
class Assignment9 extends StatelessWidget{
  const Assignment9({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 9"),
        backgroundColor: Colors.yellow,
        ),
      body: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
      ),
    );
  }
}  