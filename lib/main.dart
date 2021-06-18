import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['questionText']),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                  // Answer(_answerQuestion),
                  // Answer(_answerQuestion),
                  // Answer(_answerQuestion),
                  // RaisedButton(
                  //   child: Text('Answer 1'),
                  //   onPressed: _answerQuestion,
                  // ),
                  // RaisedButton(
                  //   child: Text('Answer 2'),
                  //   onPressed: () => print('Answer 2 chosen!'),
                  // ),
                  // RaisedButton(
                  //   child: Text('Answer 3'),
                  //   onPressed: () {
                  //     //...
                  //     print('Answer 3 chosen!');
                  //   },
                  // ),
                ],
              )
            : Center(
                child: Text('That\'s it!'),
              ),
      ),
    );
  }
}
