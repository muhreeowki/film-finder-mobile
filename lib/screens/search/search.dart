import 'package:film_finder_mobile/models/movie.dart';
import 'package:film_finder_mobile/screens/search/movie_details.dart';
import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'package:film_finder_mobile/keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var emptyMovie = Movie(title: "", year: "", poster: "", response: false);

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _CreateSearchState();
}

class _CreateSearchState extends State<Search> {
  // Define a mutable list of search results
  // Define a mutable string for the search query
  Movie movie = emptyMovie;
  Map<String, String> error = {};

  void fetchFilm(String title) async {
    // Fetch the movie and check for errors
    http.Response res = await http.get(Uri.parse(
        "http://www.omdbapi.com/?apikey=$omdbKey&type=movie&t=$title"));
    if (res.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      Map<String, dynamic> movieData =
          jsonDecode(res.body) as Map<String, dynamic>;
      if (movieData['Error'] != null) {
        setState(() {
          movie = emptyMovie;
          error['Error'] = movieData['Error'];
        });
        throw const FormatException();
      }
      setState(() {
        movie = Movie.fromJson(movieData);
      });
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load movie');
    }
  }

  @override
  void initState() {
    fetchFilm("dark knight");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Search",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: FilmFinderSearchBar(fetchFilm)),
            () {
              if (movie.title != "") {
                return MovieDetails(movie);
              } else {
                return const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Icon(
                        Icons.error,
                        size: 80,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "No movie Found",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      )
                    ]);
              }
            }()
          ],
        ),
      ),
    );
  }
}
