import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print('answer Choosen $_questionIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav color',
      'What\'s your fav animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Questions(
              questionText: questions.elementAt(_questionIndex),
            ),
            Answers(
              selectHandler: _answerQuestion,
            ),
            Answers(
              selectHandler: _answerQuestion,
            ),
            Answers(
              selectHandler: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
