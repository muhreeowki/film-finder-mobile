class Movie {
  final String title;
  final String year;
  final String rated;
  final String runtime;
  final List<String> genre;
  final String director;
  final String writer;
  final List<String> actors;
  final String plot;
  final String poster;
  final String imdbRating;
  final String type;
  final bool response;

  Movie({
    required this.title,
    required this.year,
    required this.rated,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.poster,
    required this.imdbRating,
    required this.type,
    required this.response,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        title: json['Title'] as String,
        year: json['Year'] as String,
        rated: json['Rated'] as String,
        runtime: json['Runtime'] as String,
        genre:
            (json['Genre'] as String).split(',').map((e) => e.trim()).toList(),
        director: json['Director'] as String,
        writer: json['Writer'] as String,
        actors:
            (json['Actors'] as String).split(',').map((e) => e.trim()).toList(),
        plot: json['Plot'] as String,
        poster: json['Poster'] as String,
        imdbRating: json['imdbRating'] as String,
        type: json['Type'] as String,
        response: json['Response'] as bool,
      );
}
