import 'package:inkmelo_app/models/order_detail_model.dart';

class OrderModel {
  final int id;
  final String? ghnOrderCode;
  final double orderPrice;
  final int shippingFee;
  final double totalPrice;
  final List<OrderDetailModel> detail;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  OrderModel({
    required this.id,
    this.ghnOrderCode,
    required this.orderPrice,
    required this.shippingFee,
    required this.totalPrice,
    required this.detail,
    required this.createdAt,
    required this.lastUpdatedTime,
    required this.lastChangedBy,
    required this.status,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    var detailList = json['detail'] as List;
    List<OrderDetailModel> detail =
    detailList.map((e) => OrderDetailModel.fromJson(e)).toList();

    return OrderModel(
      id: json['id'],
      ghnOrderCode: json['ghnOrderCode'],
      orderPrice: json['orderPrice'],
      shippingFee: json['shippingFee'],
      totalPrice: json['totalPrice'],
      detail: detail,
      createdAt: json['createdAt'],
      lastUpdatedTime: json['lastUpdatedTime'],
      lastChangedBy: json['lastChangedBy'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['ghnOrderCode'] = ghnOrderCode;
    data['orderPrice'] = orderPrice;
    data['shippingFee'] = shippingFee;
    data['totalPrice'] = totalPrice;
    data['detail'] = detail.map((e) => e.toJson()).toList();
    data['createdAt'] = createdAt;
    data['lastUpdatedTime'] = lastUpdatedTime;
    data['lastChangedBy'] = lastChangedBy;
    data['status'] = status;
    return data;
  }
}