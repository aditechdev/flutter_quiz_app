import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  // instead of Function you should use VoidCallback
  final VoidCallback selectHandler;

  Answers({Key? key,required this.selectHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text('Answer 3'),
      ),
    );
  }
}
