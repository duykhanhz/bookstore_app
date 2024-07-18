import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inkmelo_app/models/book_package_model.dart';

import '../models/book_model.dart';

class BookPackageRepository {
  String endPoint = 'https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/book-packages';

  Future<List<BookPackageModel>?> fecthBookPackages() async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response =
      await http.get(Uri.parse(endPoint), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result =
        jsonDecode(utf8.decode(response.bodyBytes));
        List<BookPackageModel> bookpackage =
        result.map((e) => BookPackageModel.fromJson(e)).toList();
        return bookpackage;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
