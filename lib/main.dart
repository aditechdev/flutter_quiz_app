import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('This is answer');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text('This is the Question?'),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),

      // body: Scaffold(
      //   // appBar: AppBar(title: Text("data"),)

      // ),
    );
  }
}
