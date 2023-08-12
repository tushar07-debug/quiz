import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

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
      'questionText': 'What\'s is red?',
      'answers': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Banana', 'score': 5},
        {'text': 'Orange', 'score': 3},
        {'text': 'Chiku', 'score': 1}
      ]
    },
    {
      'questionText': 'Who is the king of animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      'questionText': 'Who\'s is Narendra Modi?',
      'answers': [
        {'text': 'PM', 'score': 10},
        {'text': 'CM', 'score': 1},
        {'text': 'Police', 'score': 1},
        {'text': 'Laywer', 'score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
            answerQuestion: _answerQuestion,
            questions: _questions,
            questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}