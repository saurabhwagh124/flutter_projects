import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State<QuizApp> createState()=> _QuizApp(); 
}

class _QuizApp extends State<QuizApp>{

  int _value=1;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("QuizApp"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Container(
            height: 80,
            width: 300,
            child: const Text(style: TextStyle(fontSize: 22),"1. Is the AppBar modifiable?")
          ),
          Container(
            height: 80,
            width: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged:(value){
                    setState((){
                      _value = value!;
                    });
                  },
                ),
                const Text("1. Yes it is modifiable.")
              ],
            ),
          ),
          Container(
            height: 80,
            width: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged:(value){
                    setState((){
                      _value = value!;
                    });
                  },
                ),
                const Text("2. Can't Say."),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged:(value){
                    setState((){
                      _value = value!;
                    });
                  },
                ),
                const Text("3. No not at all."),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: null,
             child: const Text("Submit"),
          ),          
        ],
      ),

    );
    
  }
  
}