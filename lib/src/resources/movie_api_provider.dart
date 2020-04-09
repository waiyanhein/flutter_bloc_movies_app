import 'dart:convert';

import 'package:flutterblocapp/src/models/item_model.dart';
import 'package:http/http.dart' show Client;

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '96514b41cc62907ffad57a9313af4b72';

  Future<ItemModel> fetchMovieList() async {
    print("entered");
    final response = await client.get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    }

    throw Exception("Failed to load post");
  }
}
