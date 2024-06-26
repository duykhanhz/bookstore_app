import 'dart:convert';
import 'package:inkmelo_app/config/constant.dart';
import 'package:http/http.dart' as http;
import 'package:inkmelo_app/models/category_model.dart';

class CategoryRepository {
  String endPoint = '${baseURL}categories';

  Future<List<CategoryModel>?> fecthCategory() async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response =
          await http.get(Uri.parse(endPoint), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result =
            jsonDecode(utf8.decode(response.bodyBytes));
        List<CategoryModel> cateList =
            result.map((e) => CategoryModel.fromJson(e)).toList();
        return cateList;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
