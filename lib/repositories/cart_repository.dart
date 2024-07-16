import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/cart_detail_model.dart';

class CartRepository {
  String endPoint =
      'https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/customer/user1/cart-details';

  Future<List<CartDetail>?> fecthCartDetailByUserName(String userName) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      http.Response response = await http
          .get(Uri.parse('$endPoint?user=$userName'), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result =
            jsonDecode(utf8.decode(response.bodyBytes));
        List<CartDetail> cartDetails =
            result.map((e) => CartDetail.fromJson(e)).toList();
        return cartDetails;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String?> postAddToCart(
      int bookPackageId, String username, int quantity) async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      Map<String, dynamic> body = {
        'bookPackageId': bookPackageId,
        'username': username,
        'quantity': quantity
      };
      http.Response response = await http.post(Uri.parse(endPoint),
          headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) {
          final result = jsonDecode(utf8.decode(response.bodyBytes))['message'];
      
        return result;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
