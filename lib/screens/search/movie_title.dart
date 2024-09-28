import 'package:flutter/material.dart';

class MovieTitle extends StatelessWidget {
  final String text;

  const MovieTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
        child: Text(
          text,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
        ));
  }
}
