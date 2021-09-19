import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your fav animal?',
      'answer': ['Rabit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What\'s your fav color?',
      'answer': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your fav food?',
      'answer': ['Paneer', 'Pulao', 'Chicken', 'Egg']
    },
  ];

  var _questionIndex = 0;

  _answerQuestion() {
    if (_questionIndex < _questions.length) {}

    setState(() {
      _questionIndex = _questionIndex + 1;
      print('answer Choosen $_questionIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Answer(),
      ),
    );
  }
}
