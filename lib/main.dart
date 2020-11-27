import 'package:flutter/material.dart';
import 'package:tutorial_one/Quiz.dart';
import 'package:tutorial_one/Result.dart';

void main() {
  runApp(OneApp());
}

class OneApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OneAppState();
  }
}

class _OneAppState extends State<OneApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerChosen(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
    print('Name is chosen!');
  }

  var _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'Red', 'score': 5},
        {'text': 'Teal', 'score': 3},
        {'text': 'Orange', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite Bird?',
      'answers': [
        {'text': 'Parrot', 'score': 2},
        {'text': 'Dove', 'score': 4},
        {'text': 'KingFisher', 'score': 6},
        {'text': 'Emu', 'score': 8},
        {'text': 'ostrich', 'score': 10}
      ]
    },
    {
      'questionText': 'Who\'s your favourite Actor?',
      'answers': [
        {'text': 'Robert Jr', 'score': 2},
        {'text': 'Tom Cruise', 'score': 4},
        {'text': 'SRK', 'score': 6},
        {'text': 'Chris Hems', 'score': 8},
        {'text': 'Jason Statham', 'score': 10}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerChosen: _answerChosen)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
