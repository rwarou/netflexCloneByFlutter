class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Movie(this.title, this.keyword, this.poster, this.like);

  @override
  String toString() => 'Movie<$title:$keyword>';
}
