// import 'package:inkmelo_app/entities/ghn.dart';
// import 'package:inkmelo_app/models/cart_detail_model.dart';
//
// class GhnModel extends GHN {
//   final List<CartDetail> detail;
//   final List<String> tag;
//
//   const GhnModel(
//       {required super.id,
//       required super.ghnOrderCode,
//       required super.orderPrice,
//       required super.shippingFee,
//       required super.totalPrice,
//       required this.detail,
//       required super.deliveredDate,
//       required super.pickupTime,
//       required super.tag,
//       required super.createdAt,
//       required super.ghnOrderStatus});
//
//
//   factory GhnModel.fromJson(Map<String, dynamic> json) {
//     var detail = CartDetail.fromJson(json['detail']);
//     return GhnModel(
//       id: json['id'] ?? '',
//       ghnOrderCode: json['ghnOrderCode'] ?? '',
//       orderPrice: json['orderPrice'] ?? '',
//       shippingFee: json['shippingFee'] ?? '',
//       totalPrice: json['totalPrice'] ?? '',
//       deliveredDate: json['deliveredDate'] ?? '',
//       pickupTime: json['pickupTime'] ?? '',
//       tag: json['tag'].cast<String>() ?? '',
//       createdAt: json['createdAt'] ?? '',
//
//       ghnOrderStatus: json['ghnOrderStatus'] ?? '',
//     );
//   }
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['ghnOrderCode'] = ghnOrderCode;
//     data['orderPrice'] = orderPrice;
//     data['shippingFee'] = shippingFee;
//     data['totalPrice'] = totalPrice;
//     data['detail'] = detail.map((v) => v.toJson()).toList();
//     data['deliveredDate'] = deliveredDate;
//     data['pickupTime'] = pickupTime;
//     data['tag'] = tag;
//     data['createdAt'] = createdAt;
//     data['ghnOrderStatus'] = ghnOrderStatus;
//   }
// }
