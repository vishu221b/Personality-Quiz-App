import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map<String, Object> answer;
  final Function thisOne;

  Answer({this.answer, this.thisOne});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      child: RaisedButton(
        child: Text(answer['value']),
        onPressed: thisOne,
      ),
    );
  }
}
