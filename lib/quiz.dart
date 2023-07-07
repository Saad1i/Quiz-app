// ignore: unnecessary_import, avoid_web_libraries_in_flutter, unused_import
import 'dart:html';

// ignore: implementation_imports, unused_import
import 'package:flutter/src/widgets/container.dart';
// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  // const Quiz({super.key});
  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // questions.elementAt(0), // Used to select the string inside a variable
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
