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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Questions(
              questionText: '${questions[_questionIndex]["questionText"]}',
            ),
            // Map the list 
           // Use the as List<String> to say dart that it's a list 
           // ... this operator is called spread which help in bringing all the list at once of that index value
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answerHere) {
              return Answers(
                selectHandler: _answerQuestion,
                answerText: answerHere,
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
