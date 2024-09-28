import 'package:film_finder_mobile/models/movie.dart';
import 'package:film_finder_mobile/screens/search/search_result.dart';
import 'package:flutter/material.dart';
import 'search_bar.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _CreateSearchState();
}

class _CreateSearchState extends State<Search> {
  // Define a mutable list of search results
  // Define a mutable string for the search query
  Movie movie = Movie(title: "", year: "", poster: "", response: false);

  void fetchFilm() {
    setState(() {
      movie = Movie.fromJson({
        "Title": "The Batman",
        "Year": "2022",
        "Rated": "PG-13",
        "Released": "04 Mar 2022",
        "Runtime": "176 min",
        "Genre": "Action, Crime, Drama",
        "Director": "Matt Reeves",
        "Writer": "Matt Reeves, Peter Craig, Bob Kane",
        "Actors": "Robert Pattinson, Zoë Kravitz, Jeffrey Wright",
        "Plot":
            "When a sadistic serial killer begins murdering key political figures in Gotham, The Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
        "Language": "English, Spanish, Latin, Italian",
        "Country": "United States",
        "Awards": "Nominated for 3 Oscars. 38 wins & 184 nominations total",
        "Poster":
            "https://m.media-amazon.com/images/M/MV5BOGE2NWUwMDItMjA4Yi00N2Y3LWJjMzEtMDJjZTMzZTdlZGE5XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg",
        "Ratings": [
          {"Source": "Internet Movie Database", "Value": "7.8/10"},
          {"Source": "Rotten Tomatoes", "Value": "85%"},
          {"Source": "Metacritic", "Value": "72/100"}
        ],
        "Metascore": "72",
        "imdbRating": "7.8",
        "imdbVotes": "808,077",
        "imdbID": "tt1877830",
        "Type": "movie",
        "DVD": "N/A",
        "BoxOffice": "\$369,345,583",
        "Production": "N/A",
        "Website": "N/A",
        "Response": "True"
      });
    });
  }

  @override
  void initState() {
    fetchFilm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Search",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            FilmFinderSearchBar(),
            SizedBox(
              height: 20,
            ),
            () {
              if (movie.title != "") {
                return SearchResult(movie);
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
