import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Column(
          children: const [
            Text('This is the Question?'),
            RaisedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: null,
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
