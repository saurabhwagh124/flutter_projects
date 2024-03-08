import 'package:flutter/material.dart';
import 'package:flutter_project_27/todocards.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoCards(),
      debugShowCheckedModeBanner: false,
    );
  }
}
