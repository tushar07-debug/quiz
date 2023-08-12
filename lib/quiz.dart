import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:quiz/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final questionIndex;
  final Function answerQuestion;
  Quiz(
      {required this.answerQuestion,
        required this.questions,
        @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}