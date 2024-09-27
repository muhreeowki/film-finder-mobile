import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final String _title;
  final String _year;
  final String _imageURL;

  SearchResult(this._title, this._year, this._imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Title: $_title"),
          Text("Year: $_year"),
          Text("ImageURL: $_imageURL"),
        ],
      ),
    );
  }
}
