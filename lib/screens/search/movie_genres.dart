import 'package:flutter/material.dart';

class MovieGenres extends StatelessWidget {
  final List<String> genres;

  const MovieGenres(this.genres);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Wrap(
            spacing: 10,
            children: genres
                .map((genre) => Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.surfaceBright,
                            style: BorderStyle.solid,
                            width: 2.0)),
                    child: Text(genre)))
                .toList()));
  }
}
