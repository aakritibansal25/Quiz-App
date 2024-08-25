import 'package:adv_basics/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs ?',
    [
      'Widgets',
      'Componets',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built ?',[
    'Using a combination of widgets in code',
    'By combining widgets in a visual editor',
    'Defining widgets  in a config file',
    'By using XCode for IOS  and Android Studio for Android',
  ]),
  QuizQuestion('What is the purpose of a Stateful Widget ?',
  [
    'Update the UI when the data changes',
    'Update the data when the UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ]),
  QuizQuestion('Which widget should you try to use more often: Stateless or Stateful ?',
  [
    'Stateless',
    'Stateful',
    'Both',
    'None',
  ]),
  QuizQuestion('What happens if you chnage data in a Stateless Widget ?',
  [
    'The UI will not update',
    'The UI will update',
    'The closest Stateful Widget will update',
    'Any nested Stateful Widgets will update',
  ]),
  QuizQuestion('How should you uapdate data inside of StatefulWidget ?',
  [
    'Using setState()',
    'Using updateData()',
    'Using updateUI()',
    'Using updateState()',
  ]),
];