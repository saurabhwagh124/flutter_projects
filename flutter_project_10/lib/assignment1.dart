import'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});
  @override
  State<Assignment1> createState()=> _Assignment1State();
}
class _Assignment1State extends State<Assignment1>{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
        backgroundColor: Colors.deepOrange,
        actions: [
          const Icon(
            Icons.favorite_rounded,
            color: Color.fromARGB(255, 46, 26, 25),
          ),
          const Icon(
            Icons.favorite_sharp,
            color: Colors.indigo
          )
        ],
      ),
    );
  }
}