import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});
  @override 
  State<QuestionScreen> createState(){
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{
  @override
  Widget build(context){
    final currentQuestion = questions[0];

    return SizedBox(
      width:double.infinity ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
          currentQuestion.text,
          style: const TextStyle(
            color: Colors.white,
          ),),
        const SizedBox(height: 30,),
        ...currentQuestion.answer.map((answer) {
          return AnswerButton(answerText: answer, onTap: () {});
        }),
        AnswerButton(
          answerText: currentQuestion.answer[0], 
          onTap: () {}
        ),
        AnswerButton(
          answerText: currentQuestion.answer[1], 
          onTap: () {}
        ),
        AnswerButton(
          answerText: currentQuestion.answer[2], 
          onTap: () {}
        ),
        AnswerButton(
          answerText: currentQuestion.answer[3], 
          onTap: () {}
        ),
      ],),
    );
  }
}