import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String _question;
  Questions(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _question,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,alignment: Alignment.center,
    );
  }
}
