import 'package:adv_basics/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer, 
          questionIndex: itemData['question_index'] as int
        ),
        SizedBox( width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as  String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Text(itemData['user_answer'] as String,
                style: TextStyle(
                color: Color.fromARGB(255, 228, 156, 245)
                ),
              ),
              Text(itemData['correct_answer'] as String,
                style: TextStyle(
                color: Color.fromARGB(255, 141, 255, 173)
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}