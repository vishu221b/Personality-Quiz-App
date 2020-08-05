import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(PersonalityQuizApp());

class PersonalityQuizApp extends StatefulWidget {
  @override
  PersonalityQuizState createState() {
    return PersonalityQuizState();
  }
}

class PersonalityQuizState extends State<PersonalityQuizApp> {
  int _questionIndex = 0;
  var _allQuestions = ["Question 1", "Question 2", "Question 3"];
  void _onAnswerButtonPressed() {
    if (_questionIndex < (_allQuestions.length - 1)) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else if (_questionIndex == (_allQuestions.length - 1) ) {
      setState(() {
        _questionIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: 'Personality Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Question(
                _allQuestions[_questionIndex]),
            RaisedButton(
              child: Text('Tap me'),
              onPressed: _onAnswerButtonPressed,
            ),
          ],
        ),
      ),
    );
  }
}
