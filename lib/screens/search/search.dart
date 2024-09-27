import 'package:flutter/material.dart';
import 'search_bar.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _CreateSearchState();
}

class _CreateSearchState extends State<Search> {
  // Define a mutable list of search results
  // Define a mutable string for the search query

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Container(padding: EdgeInsets.all(20.0), child: SearchBar()),
    );
  }

  // Define a search method that makes an API Call to
  // a backend and stores the results in the results list,
  // and changes the query.
}
