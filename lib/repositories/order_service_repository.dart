import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:inkmelo_app/models/order_model.dart';

class OrderServiceRepository {
  final String endPoint =
      'https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/customers/user1/orders';

  Future<List<OrderModel>?> fetchOrders({
    int page = 0,
    int size = 5,
    String fromDate = '2024-01-01',
    String toDate = '2024-12-24',
  }) async {
    try {
      // Construct query parameters
      Map<String, String> queryParams = {
        'page': page.toString(),
        'size': size.toString(),
        'fromDate': fromDate,
        'toDate': toDate,
      };

      // Encode the query parameters
      String queryString = Uri(queryParameters: queryParams).query;
      String url = '$endPoint?$queryString';

      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
        List<OrderModel> orders =
        result.map((e) => OrderModel.fromJson(e)).toList();
        return orders;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('Failed to fetch orders: ${e.toString()}');
    }
  }

  Future<OrderResponse?> createOrder(OrderModel order) async {
    try {
      final url = Uri.parse(endPoint);

      final Map<String, String> headers = {'Content-Type': 'application/json'};

      final response = await http.post(
        url,
        headers: headers,
        body: jsonEncode(order.toJson()),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
        return OrderResponse.fromJson(result);
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('Failed to create order: ${e.toString()}');
    }
  }
}

class OrderResponse {
  final String paymentUrl;
  final String timestamp;
  final int status;

  OrderResponse({required this.paymentUrl, required this.timestamp, required this.status});

  factory OrderResponse.fromJson(Map<String, dynamic> json) {
    return OrderResponse(
      paymentUrl: json['paymentUrl'],
      timestamp: json['timestamp'],
      status: json['status'],
    );
  }
}