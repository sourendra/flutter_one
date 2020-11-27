import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final int score;
  final Function answerHandler;

  Answer(this.answerText, this.score, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: RaisedButton(
        color: Colors.teal,
        onPressed: () => answerHandler(score),
        child: Text(
          '$answerText',
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
