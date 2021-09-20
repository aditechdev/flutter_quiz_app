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
      'answer': [
        {'text': 'Rabit', 'score': 10},
        {'text': 'Snake', 'score': 6},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your fav color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your fav food?',
      'answer': [
        {'text': 'Paneer', 'score': 10},
        {'text': 'Pulao', 'score': 6},
        {'text': 'Chicken', 'score': 4},
        {'text': 'Egg', 'score': 2},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
          title: Text("Personality Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Answer(
                totalScore: _totalScore,
                resetQuiz: resetQuiz,
              ),
      ),
    );
  }
}
