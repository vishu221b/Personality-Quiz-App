import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function thisOne;

  Answer({this.answer, this.thisOne});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(answer),
          onPressed: thisOne,
      ),
    );
  }
}
