import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inkmelo_app/config/constant.dart';
import 'package:inkmelo_app/models/genre_model.dart';

class GenreRepository {
  String endPoint = 'https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/genres';

  Future<List<GenreModel>?> fecthGenre() async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response =
      await http.get(Uri.parse(endPoint), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result =
        jsonDecode(utf8.decode(response.bodyBytes));
        List<GenreModel> genreList =
        result.map((e) => GenreModel.fromJson(e)).toList();
        return genreList;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}