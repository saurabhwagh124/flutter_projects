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
    int que = 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text("QuizApp"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // const SizedBox(
          //   height: 20,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("Question: ",style: TextStyle(fontWeight: FontWeight.w700),),
            Text("$que/10",style: TextStyle(fontWeight: FontWeight.w500),),
          ],),
          const SizedBox(
            width: 300,
            height: 40,
            child: const Text("1. What colour is your porsche?", style: TextStyle(fontWeight: FontWeight.w600),),
          ),
          ElevatedButton(onPressed: (){},
          child: const Text("1. Grey"),
          ),
          ElevatedButton(onPressed: (){},
          child: const Text("2. Black"),
          ),
          ElevatedButton(onPressed: (){},
          child: const Text("3. Don't have one"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
        que++;
      });
      },
      child: const Text("Next"),
      ),
    );
    
  }
  
}