import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  // Here the construstor is named arguments
  Questions({Key? key, required this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
