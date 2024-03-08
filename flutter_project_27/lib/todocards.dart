import 'package:flutter/material.dart';

class ToDoCards extends StatefulWidget{
  const ToDoCards({super.key});

  State createState() => _ToDoCardsState();
}

class _ToDoCardsState extends State{

  List<Map> cards = [];
  final TextEditingController desc1_control = TextEditingController();
  final TextEditingController desc2_control = TextEditingController();
  final TextEditingController desc3_control = TextEditingController();

  final FocusNode focus1 = FocusNode();
  final FocusNode focus2 = FocusNode();
  final FocusNode focus3 = FocusNode();

  int xindex = 1;

  String? val1;
  String? val2;
  String? val3;



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDoCards"),
        centerTitle: true,
      ),
      body: ListView(
      children:[
        Column(
        children: [
          Container(
            height: 500,
            // color: Colors.orange[100],
            child: Column(
              children: [
                TextField(
                  controller: desc1_control,
                  focusNode: focus1,
                  decoration: InputDecoration(
                    hintText: "Description 1",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: desc2_control,
                  focusNode: focus2,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Description 2",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: desc3_control,
                  focusNode: focus3,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Description3",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green),
                    )
                  ),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    cards.add({
                      "line1": desc1_control.text,
                      "line2": desc2_control.text,
                      "line3": desc3_control.text
                    });
                    xindex++;
                    desc1_control.clear();
                    desc2_control.clear();
                    desc3_control.clear();
                  });
                },
                child: const Text("Add"))
              ],
            ),
          ),
          Container(
            height: 500,
            child: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                height: 100,
                color: Colors.red,
                child: Column(
                  children: [
                    Text("desc1: ${cards[index]["line1"]}"),
                    Text("desc2: ${cards[index]["line2"]}"),
                    Text("descc3: ${cards[index]["line3"]}")
                  ],
                ),
              );
            }
          ),
          )
        ],
      )
      ],
    )
    );
  }

}