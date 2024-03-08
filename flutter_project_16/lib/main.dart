import'package:flutter/material.dart';
import 'package:flutter_project_16/quizapp.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    home:QuizApp(),
    debugShowCheckedModeBanner: false,
    );
  }
}