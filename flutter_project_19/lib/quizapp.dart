import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp>{
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAns = -1;
  int flag = -1;
  MaterialColor a = Colors.blue;
  MaterialColor b = Colors.blue;
  MaterialColor c = Colors.blue;
  MaterialColor d = Colors.blue;
  List<Map> allQuestions = [
    {
      "Question": "Who is the founder of Amazon?",
      "Options": ["Steve Jobs", "Jeff Bezos","Bill Gates","Elon Musk"],
      "AnswerIndex": 1, 
    },{
      "Question": "Who is the founder of SpaceX?",
      "Options": ["Steve Jobs", "Jeff Bezos","Bill Gates","Elon Musk"],
      "AnswerIndex": 3,
    },{
      "Question": "Who is the founder of Microsoft?",
      "Options": ["Steve Jobs", "Jeff Bezos","Bill Gates","Elon Musk"],
      "AnswerIndex": 2,
    },{
      "Question": "Who is the founder of Apple?",
      "Options": ["Steve Jobs", "Jeff Bezos","Bill Gates","Elon Musk"],
      "AnswerIndex": 0,
    },{
      "Question": "Who is the founder of Google?",
      "Options": ["Steve Jobs", "Lary Page","Bill Gates","Elon Musk"],
      "AnswerIndex": 1,
    },
  ];

  Scaffold scaffoldGenerator(){

  if(questionScreen == true){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("QuizApp",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.red,
        ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Question : ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              ),
              Text("${questionIndex+1}/${allQuestions.length}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 380,
            child: Text(allQuestions[questionIndex]["Question"], 
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
            ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: (flag==0)
            ? ElevatedButton.styleFrom(backgroundColor: Colors.green)
            : ElevatedButton.styleFrom(backgroundColor: a),
            onPressed: (){
              setState(() {
                selectedAns = 0;
                if(selectedAns == allQuestions[questionIndex]["AnswerIndex"]){
                  flag = 0;
                }else{
                  flag = allQuestions[questionIndex]["AnswerIndex"];
                  a = Colors.red;
                }
              });
            }, 
            child: Text("A. ${allQuestions[questionIndex]["Options"][0]}",
            style: const TextStyle(
              fontSize: 20,
            ),
            ),
          ),
          ElevatedButton(
            style: (flag==1)
            ? ElevatedButton.styleFrom(backgroundColor: Colors.green)
            : ElevatedButton.styleFrom(backgroundColor: b),
            onPressed: (){
              setState(() {
                selectedAns = 1;
                if(selectedAns == allQuestions[questionIndex]["AnswerIndex"]){
                  flag = 1;
                }else{
                  flag = allQuestions[questionIndex]["AnswerIndex"];
                  b = Colors.red;
                }
              });
            },
            child: Text("B. ${allQuestions[questionIndex]["Options"][1]}",
            style: const TextStyle(
              fontSize: 20,
            ),),
          ),
          ElevatedButton(
            style: (flag==2)
            ? ElevatedButton.styleFrom(backgroundColor: Colors.green)
            : ElevatedButton.styleFrom(backgroundColor: c),
            onPressed: (){
              setState(() {
                selectedAns = 2;
                if(selectedAns == allQuestions[questionIndex]["AnswerIndex"]){
                  flag = 2;
                }else{
                  flag = allQuestions[questionIndex]["AnswerIndex"];
                  c = Colors.red;
                }
              });
            }, 
            child: Text("C. ${allQuestions[questionIndex]["Options"][2]}",
            style: const TextStyle(
              fontSize: 20,
            ),),
          ),
          ElevatedButton(
            style: (flag==3)
            ? ElevatedButton.styleFrom(backgroundColor: Colors.green)
            : ElevatedButton.styleFrom(backgroundColor: d),
            onPressed: (){
              setState(() {
                selectedAns = 3;
                if(selectedAns == allQuestions[questionIndex]["AnswerIndex"]){
                  flag = 3;
                }else{
                  flag = allQuestions[questionIndex]["AnswerIndex"];
                  b = Colors.red;
                }
              });
            },
            child: Text("D. ${allQuestions[questionIndex]["Options"][3]}",
            style: const TextStyle(
              fontSize: 20,
            ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            questionIndex++;
            flag = -1;
            a = Colors.blue;
            b = Colors.blue;
            c = Colors.blue;
            d = Colors.blue;
            if(questionIndex> allQuestions.length){
              questionIndex = 0;
            }
          });
        },
        child: const Icon(Icons.forward,
        color: Colors.red,
        ),
      ),
    );
  }else{
    return Scaffold();
  }
}

  @override
  Widget build(BuildContext context) {
    return scaffoldGenerator();
  }
}