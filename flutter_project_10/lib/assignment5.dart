import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment5"),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("01.jpg",height: 150,width: 150,),
            SizedBox(
              width: 20,
            ),
            Image.asset("02.jpg",height: 150, width: 150,),
            SizedBox(
              width: 20,
            ),
            Image.asset("03.jpg", height: 150, width: 150,)
          ],
        ),  
      ),
     );
  }
}