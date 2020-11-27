import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container( // I used Container here to put the text in center alignment.
      // without container text won't be showing in center horizontal. and textAlign also needs to used.
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
