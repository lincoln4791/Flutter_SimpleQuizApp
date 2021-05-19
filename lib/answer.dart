import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandeler;
  final String sanswerText;

  Answer(this.selectHandeler, this.sanswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(sanswerText),
        onPressed: selectHandeler,
      ),
    );
  }
}
