import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function()? _selectHandler;
  final String answerText;
  Answer(this._selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        //color: Colors.blue,
        //textColor: Colors.white,
        onPressed: _selectHandler,
      ),
    );
  }
}