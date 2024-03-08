import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomSheetDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomSheetDemo extends StatelessWidget{

  const BottomSheetDemo({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context, 
            builder:(BuildContext context) {
              return Column(
                children:  [
                  const Text("Create a Task", style: TextStyle(fontSize: 30),),
                  const SizedBox(height: 20,),
                  Text("Title", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color:  Color.fromRGBO(0, 139, 148, 1)) ,textAlign:  TextAlign.left,),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Title",
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius:  BorderRadius.all(Radius.circular(5))) ,
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius:  BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    cursorColor: Colors.blue,
                  ),
                  const SizedBox(height: 20,),
                  Text("Description", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color:  Color.fromRGBO(0, 139, 148, 1)),textAlign: TextAlign.left ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Description",
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius:  BorderRadius.all(Radius.circular(5))) ,
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    cursorColor: Colors.green,
                  ),
                  const SizedBox(height: 20,),
                  Text("Date", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color:  Color.fromRGBO(0, 139, 148, 1)) , textAlign: TextAlign.left,),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Date",
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue), borderRadius:  BorderRadius.all(Radius.circular(5))) ,
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    cursorColor: Colors.deepOrange,
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  },                  
                  child: const Text("Submit"))
                ],
              );
            });
          },
          child: const Icon(Icons.add_outlined),

        ),
      );
  }

}