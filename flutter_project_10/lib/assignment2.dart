import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment2"),
        centerTitle: true,
        actions: [
          const Icon(
            Icons.face_2_rounded,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}