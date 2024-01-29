import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State <MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{
  int counter = -1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iterable Flag"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            counter++;
          });
        },
        child: const Text("Add"),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (counter>=0)
            ? Container(
              height: 650,
              width: 20,
              color: Colors.black,
            )
            : Container(),
            Column(
              children: [
                (counter>=1)
                ? Container(
                  height: 80,
                  width: 350,
                  color: Colors.orange,
                )
                :Container(),
                (counter>=2)
                ? Container(
                  height: 80,
                  width: 350,
                  color: Colors.white,
                  child:(counter>=3)
                  ? Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Ashoka_Chakra_1.svg/640px-Ashoka_Chakra_1.svg.png")
                  :Container(),
                )
                :Container(),
                (counter>=4)
                ? Container(
                  height: 80,
                  width: 350,
                  color: Colors.green,
                )
                : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}