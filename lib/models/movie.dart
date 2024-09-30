class Movie {
  final String title;
  final String year;
  final String? rated;
  final String? runtime;
  List<String> genre;
  final String? director;
  final String? writer;
  List<String> actors;
  final String? plot;
  final String poster;
  final String? imdbRating;
  final String? type;
  final bool response;

  // TODO: Make these all required
  Movie({
    required this.title,
    required this.year,
    required this.poster,
    required this.response,
    this.rated,
    this.runtime,
    this.genre = const [],
    this.director,
    this.writer,
    this.actors = const [],
    this.plot,
    this.imdbRating,
    this.type,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    if (json.isEmpty || json['Title'] is Null) {
      throw const FormatException('Failed to load album.');
    } else {
      return Movie(
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
        response: json['Response'] == true,
      );
    }
  }
}
