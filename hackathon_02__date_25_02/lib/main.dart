import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoNew(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoNew extends StatefulWidget{

  const ToDoNew({super.key});
  @override
  State createState() => _ToDoNewState();
}


class _ToDoNewState extends State{
  @override
  Widget build(BuildContext context){

    List colordata = const [ Color.fromRGBO(250, 232, 232, 0.9),Color.fromRGBO(232, 237, 250, 1), Color.fromRGBO(250, 249, 232, 1), Color.fromRGBO(250, 232, 250, 1),];


    return Scaffold(
        appBar: AppBar(
          title: const Text("To-do list"),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: ListView.builder(
            itemCount:  colordata.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                height:112,
                width: 330,
                margin: const EdgeInsets.only(top: 30),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: colordata[index],
                  boxShadow: const [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0,10),
                  )]
                ),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin:const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(shape: BoxShape.circle,
                              color:  Color.fromRGBO(255, 255, 255, 1),
                              boxShadow:  [
                                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1),
                              offset: Offset(0, 10), 
                              blurRadius: 20,spreadRadius: 1)]),
                              padding: const EdgeInsets.all(10),
                              child: Image.network("https://th.bing.com/th/id/OIP._F7QJbeUp3hoYkVHuemyHQHaHv?w=171&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                            )
                          ],
                        ),
                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: 15,
                              width: 243,
                              child: Text("Lorem Ipsum is simply setting industry.",
                              style: GoogleFonts.quicksand(fontWeight: FontWeight.w600,fontSize: 12),
                              )
                            ),
                            const SizedBox(height: 10,),
                            SizedBox(
                              height: 44,
                              width: 243,
                              child: Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                              style: GoogleFonts.quicksand(fontSize: 10, fontWeight: FontWeight.w500,color: const Color.fromRGBO(84, 84, 84, 1),),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 13,
                          width: 58,
                          child:
                          Text("10 July 2023",
                          style: GoogleFonts.quicksand(color: const Color.fromRGBO(132, 132, 132, 1), fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(flex: 1,),
                        const Row(
                          children: [
                            Icon(Icons.edit_outlined, size: 23,
                            color:  Color.fromRGBO(0,139,148,1),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.delete_outlined,
                            size: 23,
                            color: Color.fromRGBO(0, 139, 148, 1),)
                          ],
                        ) 
                      ],
                    )
                  ],
                ),
              );
            }
          ),        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
          child: const Icon(Icons.add_outlined,size: 46,),
          ),
    );
  }
}