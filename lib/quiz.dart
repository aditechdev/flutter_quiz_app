import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {Key key,
      @required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questionText: questions[questionIndex]["questionText"] as String,
        ),
        // Map the list
        // Use the as List<String> to say dart that it's a list
        // ... this operator is called spread which help in bringing all the list at once of that index value
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answerHere) {
          return Answers(
            answerText: answerHere['text'] as String,
            selectHandler:()=> answerQuestion(
              answerHere['score']
            ),
            // selectHandler: answerQuestion(
            //   '${answerHere['score']}'
            // ),
            // answerText: '${answerHere['text']}',
          );
        }).toList()
      ],
    );
  }
}
