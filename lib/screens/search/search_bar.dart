import 'package:flutter/material.dart';

class FilmFinderSearchBar extends StatelessWidget {
  final TextEditingController _controller = SearchController();
  final Function searchFunction;

  FilmFinderSearchBar(this.searchFunction, {super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: _controller,
      hintText: "Movie Title",
      onSubmitted: (String value) => searchFunction(value),
    );
  }
}
