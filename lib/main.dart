import 'package:flutter/material.dart';

import 'question.dart';
import 'answers.dart';
import 'result.dart';

void main() => runApp(PersonalityQuizApp());

class PersonalityQuizApp extends StatefulWidget {
  @override
  PersonalityQuizState createState() {
    return PersonalityQuizState();
  }
}

class PersonalityQuizState extends State<PersonalityQuizApp> {
  int _totalScore = 0;
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

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _onAnswerButtonPressed(int _score) {
    if (_questionIndex < (_allQuestionAnswers.length)) {
      setState(() {
        _totalScore += _score;
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
        body: (_questionIndex < (_allQuestionAnswers.length))
            ? Column(
                children: <Widget>[
                  Question(_allQuestionAnswers[_questionIndex]['question']),
                  ...(_allQuestionAnswers[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) =>
                    Answer(
                        answer: answer['value'],
                        thisOne: () => _onAnswerButtonPressed(answer['score'])
                        )
                  ).toList(),
                ],
              )
            : FinalResult(
                score: _totalScore,
                resetQuizCallback: resetQuiz,
              ),
      ),
    );
  }
}
