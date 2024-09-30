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
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0)),
                    child: Text(genre)))
                .toList()));
  }
}
