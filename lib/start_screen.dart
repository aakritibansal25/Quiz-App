import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(115, 255, 255, 255)
          ),
          //Opacity(
            //opacity: 0.5,
            //child: Image.asset('assets/images/quiz-logo.png',
           // width: 300
           // ),
          //),
          const SizedBox(height: 40),
          const Text(
            'Learn Flutter the fun way!', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ),
          ),
          const SizedBox(height : 40),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 251, 231, 255)
            ), 
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz')),
        ],
      ),
    );
  }
}