import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 20){
      resultText = 'You are awesome and innocent!';
    } else if(resultScore <= 25){
      resultText = 'You are pretty likeable!';
    } else if(resultScore <= 30){
      resultText = 'You are weird!';
    } else {
      resultText = 'You monster!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
