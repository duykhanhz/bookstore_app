import 'package:inkmelo_app/models/book_package_model.dart';

class OrderDetailModel {
  final double id;
  final int quantity;
  final int itemPrice;
  final int totalPrice;


  OrderDetailModel({
    required this.id,
    required this.quantity,
    required this.itemPrice,
    required this.totalPrice,

  });

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) {
    return OrderDetailModel(
      id: json['id'],
      quantity: json['quantity'],
      itemPrice: json['itemPrice'],
      totalPrice: json['totalPrice'],

    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['quantity'] = quantity;
    data['itemPrice'] = itemPrice;
    data['totalPrice'] = totalPrice;

    return data;
  }
}