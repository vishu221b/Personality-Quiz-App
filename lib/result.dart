import 'package:flutter/material.dart';

class FinalResult extends StatelessWidget {
  final Function resetQuizCallback;
  final int score;

  String get finalStringToDisplay {
    return "Congratulations!!\n\n\n\n\n Your score is " +
        score.toString();
  }

  FinalResult({this.score, this.resetQuizCallback});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      margin: EdgeInsets.only(top: 150),
      padding: EdgeInsets.all(25),
      // color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 170),
              child: Text(
                finalStringToDisplay,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            FlatButton(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text("Reset Quiz"),
                onPressed: resetQuizCallback),
          ],
        ),
      ),
    );
  }
}
