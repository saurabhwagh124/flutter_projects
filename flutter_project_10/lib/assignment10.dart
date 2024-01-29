import 'package:flutter/material.dart';
class Assignment10 extends StatelessWidget{
  const Assignment10({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 10"),
        backgroundColor: Colors.yellow,
        ),
      body: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),color: Colors.red),
      ),
    );
  }
}  