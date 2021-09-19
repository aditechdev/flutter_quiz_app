import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  // instead of Function you should use VoidCallback
  final VoidCallback selectHandler;
  final String answerText;

  Answers({Key? key, required this.selectHandler, required this.answerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
