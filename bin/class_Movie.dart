class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, this.rating);

  Movie.basic(this.title, this.studio) : rating = "PG";

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> result = [];

    for (int i = 0; i < movies.length; i++) {
      if (movies[i].rating.contains("PG")) {
        result.add(movies[i]);
      }
    }

    return result;
  }
}

void main() {
  Movie m1 = Movie("Casino Royale", "Eon Productions", "PG13");

  Movie m2 = Movie.basic("Movie 2", "Studio 2");

  List<Movie> movies = [m1, m2];

  List<Movie> pgMovies = Movie.getPG(movies);

  for (int i = 0; i < pgMovies.length; i++) {
    print(pgMovies[i].title);
  }
}