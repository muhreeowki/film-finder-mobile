import 'package:film_finder_mobile/models/movie.dart';
import 'package:flutter/material.dart';

class MovieStats extends StatelessWidget {
  final Movie _movie;

  MovieStats(this._movie);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            [
              _movie.year,
              () {
                return _movie.rated != null ? _movie.rated as String : "";
              }(),
              _movie.runtime,
            ].join("  •  "),
            style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.inverseSurface))
      ],
    );
  }
}
