
import 'package:flutterblocapp/src/models/item_model.dart';
import 'package:flutterblocapp/src/resources/movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
