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
        'Black',
        'Red',
        'Blue',
        'Pink',
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Lion',
        'Bear',
        'Gorilla',
        'Panda',
      ]
    },
    {
      'questionText': 'Who\'s your favorite musician?',
      'answers': [
        'Enzo Ishall',
        'T Gonzi',
        'Takura',
        'Anita Jackson',
      ]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('answerQuestion() function ran...' + _questionIndex.toString());
    }
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
            : Result(),
      ),
    );
  }
}
