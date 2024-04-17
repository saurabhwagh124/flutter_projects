import 'package:flutter/material.dart';

class CourseCards extends StatefulWidget{
  final String courseName;
  
  const CourseCards(
    {super.key, required this.courseName}
  );

  @override
  State createState() => _CourseCardsState();
}

class _CourseCardsState extends State<CourseCards>{

  int counter = 0;
  void incrementCounter(){
    counter++;
  }
  Widget build(BuildContext context){
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              incrementCounter();
            });
          },
          child: Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: const BorderRadius.all(Radius.circular(30))
            ),
            alignment: Alignment.center,
            child: Text(widget.courseName),
          ),
        ),
        const SizedBox(width: 20,),
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Text("$counter", style: const TextStyle(fontSize:25, fontWeight: FontWeight.bold, color: Colors.white),),
        )
      ],
    );
  }
}