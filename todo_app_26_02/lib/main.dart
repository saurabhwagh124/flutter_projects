import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoApp extends StatefulWidget{

  const ToDoApp({super.key});
  @override
  State createState() => _ToDoAppState();

}

class ToDoModelClass{

  final String title;
  final String description;
  final String date;

  ToDoModelClass({required this.title, required this.description, required this.date});

}

class _ToDoAppState extends State{

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();


  void showBottomSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      isDismissible: true,
      context: context, 
      builder: (context) {
        return Padding(
          padding:  EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10,),
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent,
                          
                        ),
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  TextField(
                    controller: descriptionController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide: const BorderSide(
                        color:  Color.fromRGBO(0, 139, 148, 1)
                       ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  TextField(
                    controller: dateController,
                    readOnly: true,
                    decoration: InputDecoration(
                      suffix: const Icon(Icons.calendar_month_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onTap: () async{
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), 
                        firstDate: DateTime(2024), 
                        lastDate: DateTime(2025)
                      );
                      String formatedDate = DateFormat.yMMMd().format(pickedDate!);
                      setState(() {
                        dateController.text = formatedDate;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30  ,
              )
            ],
          ),
        );
      }
    );
  }

  List<ToDoModelClass> allcards = [
    ToDoModelClass(
      title: "Python PyQt5 project completion", 
      description: "Ask about Ui designs from ui/ux developer and search for some themes and do make backend connections tu meri adhoori pyaas pyaaas tu aa gayi dil ko raas raas", 
      date: "February 26 2024"),
  ];

  List colorcodes = [ const Color.fromRGBO(250, 232, 232, 1),const Color.fromRGBO(232, 237, 250, 1), const Color.fromRGBO(250, 249, 232, 1), const Color.fromRGBO(250, 232, 250, 1),];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text("ToDo List",
          style: GoogleFonts.quicksand(fontSize: 14,fontWeight: FontWeight.w800),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 178, 1),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15
            ),
            child: Container(
              height: 112,
              width: 330,
              padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
              decoration: BoxDecoration(
                color: colorcodes[index%4],
                borderRadius: BorderRadius.circular(10),

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 255, 255, 1)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Image.network("https://th.bing.com/th?id=OIP.gDBdAA5pacZzSnpFUHEKPgHaGA&w=277&h=225&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),

                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                        children: [
                        Text(allcards[index].title,
                        style: GoogleFonts.quicksand(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(height: 5,),
                        Text(allcards[index].description,
                        style: GoogleFonts.quicksand(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(84, 84, 84, 1)
                        ),
                        )
                      ],
                      )
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                    Text(allcards[index].date,
                    style: GoogleFonts.quicksand(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(132, 132, 132, 1)
                    ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Color.fromRGBO(2, 167, 178, 1),
                            size: 20,
                          ),
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.delete_outlined,
                            color: Color.fromRGBO(2, 167, 178, 1),
                            size: 20,
                          ),
                        )
                      ],
                    ) 
                    ],
                  )
                  ],
              ),
            ),
            
          );
        } 
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showBottomSheet();
          },
          backgroundColor: const Color.fromRGBO(2, 167, 178, 1),
          child: const Icon(
            Icons.add_outlined,
            size: 45,
            ),
        ),
    );
  }
}

