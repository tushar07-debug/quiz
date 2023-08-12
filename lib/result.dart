import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore >= 10) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 6) {
      resultText = "Bad";
    } else if (resultScore <= 5) {
      resultText = "Confused";
    } else {
      resultText = "Excellent";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(resultPhrase,
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
            //ElevatedButton(onPressed: resetHandler, child: Text('Restart quiz'))
          ],
        ));
  }
}