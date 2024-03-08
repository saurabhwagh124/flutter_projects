import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDo extends StatefulWidget{
  const ToDo({super.key});
  State createState() => _ToDoState();
}

class _ToDoState extends State{
  
  @override
  Widget build(BuildContext context){

    List colordata = [ Color.fromRGBO(250, 232, 232, 1),Color.fromRGBO(232, 237, 250, 1), Color.fromRGBO(250, 249, 232, 1), Color.fromRGBO(250, 232, 250, 1),];

    return Scaffold(
      appBar: AppBar(
        title: Text("To-do list",
        style: GoogleFonts.quicksand(fontSize: 26,fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        //foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: colordata.length,
        itemBuilder: (BuildContext context, int index){
          return  Container(
              height: 112,
              width: 330,
              margin: const EdgeInsets.fromLTRB(15, 35, 15, 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: colordata[index],boxShadow: const[BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1), offset: Offset(0, 10), blurRadius: 20, spreadRadius: 1)]),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.amber),
                        padding: EdgeInsets.all(3),
                        child: Image.network("https://th.bing.com/th/id/OIP.0CZd1ESLnyWIHdO38nyJDAAAAA?rs=1&pid=ImgDetMain"),
                      ),
                      Text("10 July 2023",
                      style: GoogleFonts.quicksand(fontWeight: FontWeight.w500, fontSize: 10,color: const Color.fromRGBO(132,132,132,1)),
                      ),
                    ]
                  ),
                  Column(
                    children: [
                      Container(
                        height: 15,
                        width: 243,
                        margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Text("Lorem Ipsum is simply setting industry.",
                        style: GoogleFonts.quicksand(fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 243,
                        margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", style: GoogleFonts.quicksand(fontWeight: FontWeight.w500, fontSize: 10),),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 250,),
                          Icon(Icons.edit_outlined,color: Color.fromRGBO(0, 139, 148, 1),),
                          Icon(Icons.delete_outlined,color: Color.fromRGBO(0, 139, 148, 1))
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add_outlined,size: 40,),
        backgroundColor: Color.fromRGBO(0, 139, 148, 1),
        ),
      );
  }
}