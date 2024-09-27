import 'package:flutter/material.dart';

class FilmFinderSearchBar extends StatelessWidget {
  final TextEditingController _controller = SearchController();

  FilmFinderSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: _controller,
      hintText: "Movie Title",
    );
  }
}
