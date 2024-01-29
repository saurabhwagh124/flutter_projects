import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment4"),
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
            )
          ],
        ),
      )
      );
  }
}