

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inkmelo_app/config/constant.dart';
import 'package:inkmelo_app/models/book_item_model.dart';

class BookItemRepository {
  String endPoint = '${baseURL}book_items';

  Future<List<BookItemModel>?> fecthBookItem() async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response =
      await http.get(Uri.parse(endPoint), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result =
        jsonDecode(utf8.decode(response.bodyBytes));
        List<BookItemModel> bookItemsList =
        result.map((e) => BookItemModel.fromJson(e)).toList();
        return bookItemsList;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}