import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/book_model.dart';

class BookRepository {
  String endPoint = 'https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/books';

  Future<List<BookModel>?> fecthBooks() async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response =
          await http.get(Uri.parse(endPoint), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result =
            jsonDecode(utf8.decode(response.bodyBytes));
        List<BookModel> books =
            result.map((e) => BookModel.fromJson(e)).toList();
        return books;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
