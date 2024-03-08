import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:new_ui_todo_app/todomodel.dart';

class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoAppState();
}

<<<<<<< HEAD

=======
>>>>>>> 3fba7e5ffc34b6ef62ba795ccf82a2fc458a390a
class _ToDoAppState extends State{
  var listColors =  [
    Colors.lime[100],
    Colors.indigo[100],
    Colors.teal[100],
    Colors.deepPurple[100],
  ];

  List<ToDoModelClass> todoList = [
    ToDoModelClass(title: "Check Git Commits", 
    description: "Commit remaining projects and assignments on git", 
    date: "08 March 2024"),
    ToDoModelClass(title: "Laundry", 
    description: "Collect all Clothes to Laundry", 
    date: "09 March 2024"),
    ToDoModelClass(title: "Visit Dmart ", 
    description: "Bring Snacks and Coldrinks ", 
    date: "10 March 2024"),
    ToDoModelClass(title: "Assignments", 
    description: "Complete all Assignments for Submission", 
    date: "11 March 2024")
  ];
  
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void showModelSheet(bool doEdit, [ToDoModelClass? todoModelObj]){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
      ),
      isDismissible: true,
      context: context,
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22
                ),
              ),
              const SizedBox(height: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),
                  ),
                  const SizedBox(height: 3,),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 2, 2),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 2, 2),
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 3,),
                  TextField(
                    controller: descController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 2, 2),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: dateController,
                    readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_sharp),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 2, 2),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onTap: () async{
                      DateTime? pickdate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), 
                        firstDate: DateTime(2024), 
                        lastDate: DateTime(2025)
                      );
                      String formatedDate = DateFormat.yMMMd().format(pickdate!);
                      setState(() {
                        dateController.text = formatedDate;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
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
                    backgroundColor: const Color.fromRGBO(0, 139, 148, 1)
                  ),
                  onPressed: (){
                    doEdit? submit(doEdit, todoModelObj) 
                    : submit(doEdit);
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
        );
      }
    );
  }

  void submit(bool doEdit, [ToDoModelClass? toDoModelObj]){
    if(
      titleController.text.trim().isNotEmpty &&
      descController.text.trim().isNotEmpty &&
      dateController.text.trim().isNotEmpty
    ){
      if(!doEdit){
        setState(() {
          todoList.add(
            ToDoModelClass(
              title: titleController.text.trim(), 
              description: descController.text.trim(), 
              date: dateController.text.trim()
            )
          );
        });
      }else{
        setState(() {
          toDoModelObj!.date = dateController.text.trim();
          toDoModelObj.title = titleController.text.trim();
          toDoModelObj.description = descController.text.trim();
        });
      }
    }
    clearController();
  }
  
  void clearController(){
    titleController.clear();
    descController.clear();
    dateController.clear();
  }

  void removeTask(ToDoModelClass toDoModelObj){
    setState(() {
      todoList.remove(toDoModelObj);
    });
  }

  void editTask(ToDoModelClass toDoModelObj){
    titleController.text = toDoModelObj.title;
    descController.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;
    showModelSheet(true, toDoModelObj);
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    dateController.dispose();
    descController.dispose();
  }

  @override
  Widget build(BuildContext context){
      return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.green[800],
         // Colors.green,
          title: Text(
            "To-Do_App",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/asset2_3.jpg"),fit: BoxFit.fitHeight),
          ),
          child: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 16
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: listColors[index%listColors.length],
                    boxShadow: const [BoxShadow(
                      offset: Offset(0, 10),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                    )],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Image.asset("assets/asset1.jpg"),
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    todoList[index].title,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Colors.black
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Text(
                                    todoList[index].description,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[900],                                     ),
                                  ),
                                ],
                              ) 
                            ),
                          ],
                        ),
                        const SizedBox(height: 14,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            children: [
                              Text(
                                todoList[index].date,
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey[900],                                 ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      editTask(todoList[index]);
                                    },
                                    child: const Icon(
                                      Icons.edit_outlined,
                                      color: Colors.black
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      removeTask(todoList[index]);
                                    },
                                    child: Icon(
                                      Icons.delete_forever_outlined,
                                      color: Colors.redAccent[700],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreenAccent[400],
          onPressed: (){
            clearController();
            showModelSheet(false);
          },
          child: Icon(
            size: 50,
            Icons.add,
            color: Colors.lightGreen[900],
          ),
        ),
        
      );  
  }
}