import 'package:flutter/material.dart';
import 'package:first_project/answer.dart';
import 'package:first_project/questions.dart';


class Quiz extends StatelessWidget {
final List<Map<String,Object>> questionsPassed;
final int indexPassed;
final Function handlerPassed;


Quiz( {@required this.questionsPassed, @required this.indexPassed, @required this.handlerPassed});

@override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(questionsPassed[indexPassed]['questionText']),
      ...(questionsPassed[indexPassed]['answerText']as List<Map<String,Object>>).map((e){
        return Answer(()=>handlerPassed(e['score']),e['answerValue']);
      }).toList()
    ],);
  }
}
