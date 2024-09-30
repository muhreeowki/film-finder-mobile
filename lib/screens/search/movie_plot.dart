import 'package:flutter/material.dart';

class MoviePlot extends StatelessWidget {
  final String? text;

  const MoviePlot(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Text(
          () {
            return text != null ? text as String : "";
          }(),
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ));
  }
}
