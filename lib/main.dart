import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 6},
        {'text': 'Pink', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Bear', 'score': 11},
        {'text': 'Gorilla', 'score': 5},
        {'text': 'Panda', 'score': 6},
      ]
    },
    {
      'questionText': 'Who\'s your favorite musician?',
      'answers': [
        {'text': 'Enzo Ishall', 'score': 9},
        {'text': 'T Gonzi', 'score': 7},
        {'text': 'Takura', 'score': 8},
        {'text': 'Anita Jackson', 'score': 5},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('answerQuestion() function ran...' + _questionIndex.toString());
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
