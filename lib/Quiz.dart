import 'package:flutter/material.dart';
import 'Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerChosen;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerChosen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(answer['text'], answer['score'], answerChosen))
            .toList()
      ],
    );
  }
}
