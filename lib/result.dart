import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 25) {
      resultText = 'You are pretty likeable!';
    } else if (resultScore <= 30) {
      resultText = 'You are weird!';
    } else {
      resultText = 'You monster!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
