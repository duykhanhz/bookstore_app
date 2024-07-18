

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inkmelo_app/config/constant.dart';
import 'package:inkmelo_app/models/user_model.dart';

class UserRepository {
  String endPoint = '${baseURL}users';
  String registerEndPoint ='https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/users/register';
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
  Future<bool> registerUser(UserModel user) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      final body = jsonEncode(user.toJson());

      http.Response response = await http.post(
        Uri.parse(registerEndPoint),
        headers: headers,
        body: body,
      );

      if (response.statusCode == 201) {
        // Đăng ký thành công
        return true;
      } else {
        // Xử lý lỗi từ server (ví dụ: thông báo người dùng đã tồn tại)
        print('Failed to register user: ${response.statusCode} - ${response.body}');
        return false;
      }
    } catch (e) {
      // Xử lý ngoại lệ
      print('Exception occurred: $e');
      return false;
    }
  }
}