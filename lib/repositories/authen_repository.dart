import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user_model.dart';

class AuthenRepository {
  String endPoint =
      'http://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/auth/sign-in';

  Future<UserModel?> loginWithAccount(String userName, String password) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      Map<String, String> body = {'userName': userName, 'password': password};

      http.Response response = await http.post(Uri.parse(endPoint),
          headers: headers, body: jsonEncode(body));
      if (response.statusCode == 200) {
        final result = jsonDecode(utf8.decode(response.bodyBytes));
        UserModel userModel = UserModel.fromJson(result);
        return userModel;
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
