import 'package:flutter/material.dart';
import 'package:using_class_widget_course_counter/course_cards.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CourseScreen(),
      debugShowCheckedModeBanner: false
    );
  }
}

class CourseScreen extends StatefulWidget{
  const CourseScreen({super.key});

  @override
  State createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen>{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Ephemeral State"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          CourseCards(courseName: "Java"),
          SizedBox(height: 40,),
          CourseCards(courseName: "Flutter")
        ],
      ),
    );
  }
}