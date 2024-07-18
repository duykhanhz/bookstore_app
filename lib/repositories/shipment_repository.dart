import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:inkmelo_app/config/constant.dart';
import 'package:inkmelo_app/models/shipment_model.dart';

class ShipmentRepository {
  String endPoint = 'https://inkmelo-springboot-be-s2etd44lba-as.a.run.app/store/api/v1/customer/user1/shipments';

  Future<List<ShipmentModel>?> fetchShipment() async {
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};

      http.Response response = await http.get(Uri.parse(endPoint), headers: headers);

      if (response.statusCode == 200) {
        final List<dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
        List<ShipmentModel> shipmentList = result.map((e) => ShipmentModel.fromJson(e)).toList();
        return shipmentList;
      } else {

        return null;
      }
    } catch (e) {

      throw Exception(e.toString());
    }
  }
}