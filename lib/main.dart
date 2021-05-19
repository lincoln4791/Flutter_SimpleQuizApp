import 'package:first_project/quiz.dart';
import 'package:first_project/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;
  var _totalScore = 0;

  void resetQuiz(){
    setState(() {
      index=0;
      _totalScore=0;
    });
  }

  void answerQuestion(int scorePassed) {
    _totalScore += scorePassed;
    setState(() {
      index++;
    });

    print(index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favourite color',
        'answerText': [
          {
            'answerValue': 'green',
            'score': 5,
          },
          {
            'answerValue': 'yellow',
            'score': 10,
          },
          {
            'answerValue': 'red',
            'score': 15,
          },
        ],
      },
      {
        'questionText': 'What is your favourite Animal',
        'answerText': [
          {
            'answerValue': 'cat',
            'score': 5,
          },
          {
            'answerValue': 'dog',
            'score': 10,
          },
          {
            'answerValue': 'lion',
            'score': 15,
          },
        ],
      },
      {
        'questionText': 'What is your age',
        'answerText': [
          {
            'answerValue': '20',
            'score': 5,
          },
          {
            'answerValue': '30',
            'score': 10,
          },
          {
            'answerValue': '40',
            'score': 15,
          },
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: index < questions.length
            ? Quiz(
                questionsPassed: questions,
                indexPassed: index,
                handlerPassed: answerQuestion)
            : Result(_totalScore,resetQuiz),
      ),
    );
  }
}
