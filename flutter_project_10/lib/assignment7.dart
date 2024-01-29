import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget{
  const Assignment7({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 7"),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 237, 123, 9),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: const Color.fromARGB(255, 0, 124, 95),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 151, 12, 232),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 89, 13, 240),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 242, 213, 24),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 220, 255, 20),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 231, 41, 193),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 24, 59, 218),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 30, 205, 11),
                ),
                SizedBox(
                  width: 50,
                ),Container(
                  height: 100,
                  width: 200,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}