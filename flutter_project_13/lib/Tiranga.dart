import 'package:flutter/material.dart';

class Tiranga extends StatelessWidget{
  const Tiranga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happy Republic Day"),
        backgroundColor: Color.fromARGB(255, 243, 19, 19)
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(229, 156, 224, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children:[ 
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 15,
            ),
            Container(
              height: 550,
              width: 15,
              color: Colors.black,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 250,
            ),
            Container(
              height: 50,
              width: 250,
              //color: Colors.orange,
              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(15)), color: Colors.orange),
            ),
            Container(
              width: 250,
              height: 50,
              color: Colors.white,
              child: Image.network("https://media.istockphoto.com/id/1182479181/vector/ashoka-chakra.jpg?s=612x612&w=0&k=20&c=bDrv1c_tw5pOa-R0Agg62ZjeMJl3S22Trk-ViEhJiIU="),
            ),
            Container(
              height: 50,
              width: 250,
              color: Colors.green,
            ),
          
          ],
        ),
        ]
      ),)
    );
  }
}