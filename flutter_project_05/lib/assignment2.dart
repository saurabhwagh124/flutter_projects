import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2>{
  bool box1Color = false;
  bool box2Color = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Color Box"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //box1
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box1Color ? Colors.red : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //box1 button
                    ElevatedButton(onPressed: (){
                      setState(() {
                        box1Color = true;
                      });
                    }, 
                    child: const Text("Color box1"),
                    ),
                  ],
                ),

                const SizedBox(
                  width: 30,
                ),

                //Box 2

              ],
            )
          ],
        ),
      )
    );
  }
}