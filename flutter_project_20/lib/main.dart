import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: My_Todo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class My_Todo extends StatefulWidget {
  const My_Todo({super.key});

  @override
  State<My_Todo> createState() => _MyTodoState();
}

class _MyTodoState extends State<My_Todo> {
  List<String> myTaskList = [];

  final TextEditingController _taskEditController = TextEditingController();
  final FocusNode _taskFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List",
        style: TextStyle(color: Colors.red),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(211, 251, 242, 242),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _taskEditController,
            focusNode: _taskFocusNode,
            decoration: InputDecoration(
              hintText: "Enter a task",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(color: Colors.blue)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.green)),
            ),
            cursorColor: Colors.cyan,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.name,
            onChanged: (value) {
              print("Value = $value");
            },
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: myTaskList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 60,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent),
                  child: Text(
                    "${myTaskList[index]}",
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myTaskList.add(_taskEditController.text);
            _taskEditController.clear();
          });
        },
        backgroundColor: Colors.cyanAccent,
        child: const Text("add"),
      ),
    );
  }
}