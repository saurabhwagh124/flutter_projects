import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Hello Core 2 Web"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 360,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}