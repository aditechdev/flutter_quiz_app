import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Answer({Key key, @required this.totalScore, @required this.resetQuiz})
      : super(key: key);

  String get resultPhrase {
    var resultText = "You did it!";
    if (totalScore <= 8) {
      resultText = 'You are awesome 👌';
    } else if (totalScore <= 12) {
      resultText = 'You are flawless 💃';
    } else if (totalScore <= 16) {
      resultText = 'You are creative & happy 🎨';
    } else {
      resultText = 'You have great future ❤️';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 18),
          ),
          FlatButton(
              onPressed: resetQuiz,
              child: Text(
                "Reset Quiz",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ))
        ],
      ),
    );
  }
}
