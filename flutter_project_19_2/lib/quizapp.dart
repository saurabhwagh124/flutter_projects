import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget{

  const QuizApp({super.key});

  State createState()=> _QuizAppState();
}

class SingleQuestionModel{
  final String? question;
  final List<String>? options;
  final int? answerIndex;
  const SingleQuestionModel({this.question,this.options,this.answerIndex});
}

class _QuizAppState extends State{
  int questionPage = 0;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int correctAnswers = 0;

  List allQuestions = [
    const SingleQuestionModel(
      question: "What programming language is used to build flutter?",
      options: ["1. Kotlin","2. Java","3. Dart","4. Go"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "How many types of widget are in flutter?",
      options: ["1. 2","2. 4","3. 6","4. 8+"],
      answerIndex: 0,
    ),
    const SingleQuestionModel(
      question: "Who developed Flutter framework and maintains it?",
      options: ["1. Meta","2. Microsoft","3. Google","4. Oracle"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "Which element is used as an Identifier in flutter?",
      options: ["1. Serial","2. Widgets","3. Keys","4. All of the above"],
      answerIndex: 2,
    ),
    const SingleQuestionModel(
      question: "What are the features of Flutter?",
      options: ["1. Fast Development","2. Huge Widget Catalog","3. High-Performance App","4. All of the above"],
      answerIndex: 3,
    ),
  ];

  MaterialStatePropertyAll<Color?> checkOption(int buttonSelected){
    if(selectedAnswerIndex !=-1){
      if(buttonSelected == allQuestions[questionIndex].answerIndex){
        return const MaterialStatePropertyAll(Colors.green);
      }else if(buttonSelected == selectedAnswerIndex){
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(null);
      }

    }else{
      return const MaterialStatePropertyAll(null);
    }
  }

  String getFire(int correctAnswers){
    if (correctAnswers == 5) {
      return "🔥🔥🔥🔥🔥";
    } else if(correctAnswers == 4){
      return "🔥🔥🔥🔥";
    }else if(correctAnswers  == 3){
      return "🔥🔥🔥";
    }else if(correctAnswers == 2){
      return "🔥🔥"; 
    }else if(correctAnswers == 1){
      return "🔥";
    }else{
      return "";
    }
  }

  Scaffold checkQuizPage(){
    if (questionPage == 0) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[300],
          title: const Text("QuizApp",
          style: TextStyle(
            fontSize: 25,
            color: Colors.red,
            fontWeight: FontWeight.w700
          ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const SizedBox(height: 50,),
            Image.network("https://i.pinimg.com/564x/a0/14/36/a014362c80434842e9c9b5c792f881eb.jpg",
            height: 150,
            width: 300,
            ),
            const Text("Topic : Flutter Basics",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),
            ),
            const SizedBox(height: 50,),
            Container(
              height: 30,
              width: 200,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber)
                ),
                onPressed: (){
                  questionPage = 1;
                  setState(() {
                    
                  });
                },
                child:  const Text("Start",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
              ),
              ),
            ),
          ],
        ),
      );
    }
    else if(questionPage==1){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("QuizApp",
        style: TextStyle(
          color: Colors.red,
          fontSize: 25,
          fontWeight: FontWeight.w700
        ),
        ),
        backgroundColor: Colors.yellow[300],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
              const Text("Questions",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
              ),
              Text("${questionIndex+1}/${allQuestions.length}",
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
              ),
            ]
          ),
          const SizedBox(height: 30,),
          Text("${allQuestions[questionIndex].question}",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          ),
          const SizedBox(height: 20,),
          Container(height: 40,
          width: 250,
          child:
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkOption(0),
            ),
          onPressed: (){
            if (selectedAnswerIndex == -1) {
              setState(() {
                selectedAnswerIndex = 0;
              });
            }
          },
           child: Text("${allQuestions[questionIndex].options[0]}")
          ),
          ),
          const SizedBox(height: 20,),
          Container(height: 40,
          width: 250,
          child:ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkOption(1),
            ),
          onPressed: (){
            if (selectedAnswerIndex == -1) {
              setState(() {
                selectedAnswerIndex = 1;
              });
            }
          },
           child: Text("${allQuestions[questionIndex].options[1]}")
          ),
          ),
          const SizedBox(height: 20,),
          Container(height: 40,
          width: 250,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkOption(2),
            ),
          onPressed: (){
            if (selectedAnswerIndex == -1) {
              setState(() {
                selectedAnswerIndex = 2;
              });
            }
          },
           child: Text("${allQuestions[questionIndex].options[2]}")
          ),
          ),
          const SizedBox(height: 20,),
          Container(height: 40,
          width: 250,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkOption(3),
            ),
          onPressed: (){
            if (selectedAnswerIndex == -1) {
              setState(() {
                selectedAnswerIndex = 3;
              });
            }
          },
           child: Text("${allQuestions[questionIndex].options[3]}")
          ),
          ),
          
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed: (){
          if(selectedAnswerIndex != -1){
            if(questionIndex == (allQuestions.length-1)){
              questionPage = 2;
            }
            if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
              correctAnswers += 1;
            }
            questionIndex += 1;
            selectedAnswerIndex = -1;
            setState(() {});
            
          }
        },
        child: const Icon(Icons.forward),
        ),
    );
    }else{
      return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text("QuizApp",
        style: TextStyle(
          color: Colors.red,
          fontSize: 25,
          fontWeight: FontWeight.w700
        ),
        ),
        backgroundColor: Colors.yellow[300],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          Image.network(
            "https://i.pinimg.com/236x/4a/08/30/4a083000a80262e2ccd897a6f7bfbd36.jpg",
              height: 300,
              width: 380,          
          ),
          const Text("Congratulations! 🎉",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),),
          Text(
            "Correct Answers: $correctAnswers/${allQuestions.length}",
            style: const TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500),
          ),
          Text(getFire(correctAnswers),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: (){
              questionPage = 1;
              questionIndex = 0;
              selectedAnswerIndex = -1;
              correctAnswers = 0;
              setState(() {});
            },
            child: const Text("Reset",
            style: TextStyle(fontSize: 15),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
            onPressed: (){
              questionPage = 0;
              questionIndex = 0;
              selectedAnswerIndex = -1;
              correctAnswers = 0;
              setState(() {});
            },
            child: const Text("Exit",
            style: TextStyle(fontSize: 15),
            )),
            
        ],
      ),
      );
    }
  }
  @override
  Widget build(BuildContext context){
    return checkQuizPage();
  }
}