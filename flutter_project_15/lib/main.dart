import 'package:flutter/material.dart';
import 'package:flutter_project_15/portfolio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Portfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}
