import 'package:flutter/material.dart';
import 'Question.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(
            'Good Job!!\nYour total score is: $totalScore',
          ),
          RaisedButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
