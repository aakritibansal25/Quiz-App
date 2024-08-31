import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/question_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }

    if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 243, 8, 208),
                Color.fromARGB(255, 125, 3, 187)
              ]
            ),
          ),
          child:screenWidget ,
        ) ,
      ),
    );
  }
}