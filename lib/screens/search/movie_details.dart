import 'package:film_finder_mobile/models/movie.dart';
import 'package:film_finder_mobile/screens/search/movie_genres.dart';
import 'package:film_finder_mobile/screens/search/movie_plot.dart';
import 'package:film_finder_mobile/screens/search/movie_poster.dart';
import 'package:film_finder_mobile/screens/search/movie_stats.dart';
import 'package:film_finder_mobile/screens/search/movie_title.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final Movie _movie;

  MovieDetails(this._movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [MovieTitle(_movie.title), MovieStats(_movie)]),
              ),
              MoviePoster(_movie.poster),
              () {
                return _movie.genre.isNotEmpty
                    ? MovieGenres(_movie.genre)
                    : const Text("");
              }(),
              MoviePlot(_movie.plot)
            ],
          ),
        ));
  }
}
