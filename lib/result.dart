import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;
  Function resetFunctionPassed;

  Result(this.score, this.resetFunctionPassed);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Result is : " + score.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
          FlatButton(onPressed: resetFunctionPassed, child: Text('Restart Quiz',style: TextStyle(fontSize: 25),))
        ],
      ),
    );
  }
}
