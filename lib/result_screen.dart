import 'package:adv_basics/data/questions.dart';
//import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/question_summary.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];
    for(var i=0;  i<chosenAnswers.length; i++){
      summary.add({
        'question_index': i,
        'question' : questions[i].text,
        'correct_answer' : questions[i].answer[0],
        'user_answer' : chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly !'),
            SizedBox(height: 30,),
            QuestionSummary(summaryData),
            SizedBox(height: 30,),
            TextButton(
              onPressed: (){}, 
              child: Text('Restart Quiz'),
            )
          ],
        ),
      )
    );
  }
}