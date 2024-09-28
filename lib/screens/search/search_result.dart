import 'package:film_finder_mobile/models/movie.dart';
import 'package:film_finder_mobile/screens/search/movie_poster.dart';
import 'package:film_finder_mobile/screens/search/movie_stats.dart';
import 'package:film_finder_mobile/screens/search/movie_title.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final Movie _movie;

  SearchResult(this._movie);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MovieTitle(_movie.title),
                  MovieStats(_movie),
                  MoviePoster(_movie.poster),
                  Text(() {
                    return _movie.genre.isNotEmpty ? _movie.genre.first : "";
                  }()),
                  Text(() {
                    return _movie.plot != null ? _movie.plot as String : "";
                  }()),
                ],
              ),
            )));
  }
}
