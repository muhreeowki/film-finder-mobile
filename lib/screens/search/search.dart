import 'package:film_finder_mobile/models/movie.dart';
import 'package:film_finder_mobile/screens/search/movie_details.dart';
import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'package:film_finder_mobile/keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _CreateSearchState();
}

class _CreateSearchState extends State<Search> {
  // Define a mutable list of search results
  // Define a mutable string for the search query
  Movie movie = Movie(title: "", year: "", poster: "", response: false);

  void fetchFilm(String title) async {
    http.Response res = await http.get(Uri.parse(
        "http://www.omdbapi.com/?apikey=$omdbKey&type=movie&t=$title"));
    if (res.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      setState(() {
        movie = Movie.fromJson(jsonDecode(res.body) as Map<String, dynamic>);
      });
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    fetchFilm("dark night");
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
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            FilmFinderSearchBar(fetchFilm),
            const SizedBox(
              height: 20,
            ),
            () {
              if (movie.title != "") {
                return MovieDetails(movie);
              } else {
                return const Text("");
              }
            }()
          ],
        ),
      ),
    );
  }

  // Define a search method that makes an API Call to
  // a backend and stores the results in the results list,
  // and changes the query.
}

    //   movie = Movie.fromJson({
    //     "Title": "The Batman",
    //     "Year": "2022",
    //     "Rated": "PG-13",
    //     "Released": "04 Mar 2022",
    //     "Runtime": "176 min",
    //     "Genre": "Action, Crime, Drama",
    //     "Director": "Matt Reeves",
    //     "Writer": "Matt Reeves, Peter Craig, Bob Kane",
    //     "Actors": "Robert Pattinson, Zoë Kravitz, Jeffrey Wright",
    //     "Plot":
    //         "When a sadistic serial killer begins murdering key political figures in Gotham, The Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
    //     "Language": "English, Spanish, Latin, Italian",
    //     "Country": "United States",
    //     "Awards": "Nominated for 3 Oscars. 38 wins & 184 nominations total",
    //     "Poster":
    //         "https://m.media-amazon.com/images/M/MV5BOGE2NWUwMDItMjA4Yi00N2Y3LWJjMzEtMDJjZTMzZTdlZGE5XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg",
    //     "Ratings": [
    //       {"Source": "Internet Movie Database", "Value": "7.8/10"},
    //       {"Source": "Rotten Tomatoes", "Value": "85%"},
    //       {"Source": "Metacritic", "Value": "72/100"}
    //     ],
    //     "Metascore": "72",
    //     "imdbRating": "7.8",
    //     "imdbVotes": "808,077",
    //     "imdbID": "tt1877830",
    //     "Type": "movie",
    //     "DVD": "N/A",
    //     "BoxOffice": "\$369,345,583",
    //     "Production": "N/A",
    //     "Website": "N/A",
    //     "Response": "True"
    //   });
