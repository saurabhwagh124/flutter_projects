import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget{
    const Assignment6({super.key});
    @override
    State<Assignment6> createState()=> _Assignment6State();
}

class _Assignment6State extends State<Assignment6>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment6"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.deepOrange,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: Color.fromARGB(255, 240, 240, 18),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: Color.fromARGB(255, 236, 30, 7),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: Color.fromARGB(255, 6, 237, 41),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 34, 255, 111),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: Color.fromARGB(255, 4, 130, 175),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: const Color.fromARGB(255, 188, 58, 18),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: Color.fromARGB(255, 34, 137, 255),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              color: Color.fromARGB(255, 34, 67, 255),
            ),
            
          ],
          )
        ]),
      )
    );
  }
}