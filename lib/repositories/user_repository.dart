

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inkmelo_app/config/constant.dart';
import 'package:inkmelo_app/models/user_model.dart';

class UserRepository {
  String endPoint = '${baseURL}users';

  Future<List<UserModel>?> fecthUser() async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response =
      await http.get(Uri.parse(endPoint), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result =
        jsonDecode(utf8.decode(response.bodyBytes));
        List<UserModel> userList =
        result.map((e) => UserModel.fromJson(e)).toList();
        return userList;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}