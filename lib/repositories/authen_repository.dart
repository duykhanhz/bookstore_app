import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inkmelo_app/models/authen_model.dart';

class AuthenRepository {
  String endPoint =
      'https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/auth/sign-in';

  Future<AuthenModel?> loginWithAccount(String userName, String password) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      Map<String, String> body = {'username': userName, 'password': password};

      http.Response response = await http.post(Uri.parse(endPoint),
          headers: headers, body: jsonEncode(body));
      if (response.statusCode == 200) {
        final result = jsonDecode(utf8.decode(response.bodyBytes));
        AuthenModel authenModel = AuthenModel.fromJson(result);
        return authenModel;
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
