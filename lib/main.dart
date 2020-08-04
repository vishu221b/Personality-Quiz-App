import 'package:flutter/material.dart';

void main() => runApp(PersonalityTest());

class PersonalityTest extends StatelessWidget {
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
            Text('Click on the Answer button to print output in debug console.'),
            RaisedButton(
              child: Text('Answer'),
              onPressed: () => print('Answer button has been pressed!'),
            ),
          ],
        ),
      ),
    );
  }
}
