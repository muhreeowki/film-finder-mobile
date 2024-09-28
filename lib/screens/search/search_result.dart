import 'package:film_finder_mobile/models/movie.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final Movie _movie;

  SearchResult(this._movie);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(_movie.title),
              Text(_movie.year),
              Text(() {
                if (_movie.actors.isNotEmpty) {
                  return _movie.actors.first;
                } else {
                  return "";
                }
              }())
            ],
          ),
        ));
  }
}
