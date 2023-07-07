import 'package:flutter/material.dart';
 
import './quiz.dart';
// ignore: unused_import
import './result.dart';

// void mian() {
//   runApp(const MyApp());
// }
void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\' is you favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Husky', 'score': 8},
        {'text': 'Dog', 'score': 4},
        {'text': 'Cat', 'score': 1},
        {'text': 'Lama', 'score': 10},
      ]
    },
    {
      'questionText': 'Who is your favourite soccer player?',
      'answers': [
        {'text': 'Cristiano Ronaldo', 'score': 1},
        {'text': 'Lionel Messi', 'score': 3},
        {'text': 'Neymar Jr', 'score': 5},
        {'text': 'Mohammad Salah', 'score': 7},
      ]
    },
    {
      'questionText': 'What\'s your hobby?',
      'answers': [
        {'text': 'Sports', 'score': 5},
        {'text': 'Reading', 'score': 3},
        {'text': 'Coding', 'score': 1},
        {'text': 'Games', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Traditional food', 'score': 1},
        {'text': 'Fast food', 'score': 7},
        {'text': 'Sea food', 'score': 3},
        {'text': 'Vegetables', 'score': 5},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // ignore: unused_element
  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  // MyAppState({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    // var dummy = ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // questions = []; // does not work if questions is a const

    // ignore: prefer_typing_uninitialized_variables, unused_local_variable
    var colors;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
