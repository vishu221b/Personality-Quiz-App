import 'package:flutter/material.dart';

import 'question.dart';
import 'answers.dart';

void main() => runApp(PersonalityQuizApp());

class PersonalityQuizApp extends StatefulWidget {
  @override
  PersonalityQuizState createState() {
    return PersonalityQuizState();
  }
}

class PersonalityQuizState extends State<PersonalityQuizApp> {
  int _questionIndex = 0;
  var _allQuestionAnswers = [
    {
      'question': 'What is your favourite food?',
      'answers': [
        {'score': 20, 'value': 'Burger'},
        {'score': 40, 'value': 'Pizza'},
        {'score': 60, 'value': 'Veggies'},
        {'score': 80, 'value': 'Raw Fruits'}
      ]
    },
    {
      'question': 'What is your favourite animal?',
      'answers': [
        {'score': 20, 'value': 'Lion'},
        {'score': 40, 'value': 'Cat'},
        {'score': 60, 'value': 'Dog'},
        {'score': 80, 'value': 'Panda'}
      ]
    },
    {
      'question': 'What is your favourite color?',
      'answers': [
        {'score': 20, 'value': 'Red'},
        {'score': 40, 'value': 'Green'},
        {'score': 60, 'value': 'Blue'},
        {'score': 80, 'value': 'Black'}
      ]
    }
  ];

  void _onAnswerButtonPressed() {
    if (_questionIndex < (_allQuestionAnswers.length - 1)) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else if (_questionIndex == (_allQuestionAnswers.length - 1)) {
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
            Question(_allQuestionAnswers[_questionIndex]['question']),
            Answer(
                answer: _allQuestionAnswers[_questionIndex]['answers'],
                thisOne: _onAnswerButtonPressed),
          ],
        ),
      ),
    );
  }
}
