import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget{
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _portfolio();
}

class _portfolio extends State<Portfolio>{
  int counter = -1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: const Text("Next"),
        ),
        body: Container(
          color: Color.fromARGB(255, 232, 113, 77),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Name: ",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),),
                (counter>=0)
                ? const Text("Saurabh Ajay Wagh",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic))
                : const Text(""),
              ],
            ),
            SizedBox(
              height: 25,
              width: double.infinity,
            ),
            (counter>=1)
            ? Container(
              height: 200,
              width: 150,
              child: Image.asset("assets/01.jpg"),
            )
            :Container(),
            SizedBox(
              height: 25,
              width: double.infinity,
            ),
            Row(
              children: [
                const Text("College Name: ",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic)),
                (counter>=2)
                ? const Text("SITS narhe",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic))
                : const Text(""),
              ],
            ),
            (counter>=3)
            ? Container(
              height: 200,
              width: 150,
              child: Image.network("https://images.shiksha.com/mediadata/images/1571990208phpCoii2i.jpg"),
            )
            :Container(),
            Row(
              children: [
                const Text("Company Name: ",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic)),
                (counter>=4)
                ? const Text("Tiger Inc.",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic))
                : const Text(""),
              ],
            ),
            (counter>=5)
            ? Container(
              height: 200,
              width: 150,
              child: Image.asset("assets/Tiger_Inc.jpeg"),
            )
            :Container(),
          ],
          ),
        ),
    );
  }
}