

import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/entities/order_detail.dart';

class Order extends Equatable{
  final int id;
  final String? ghnOrderCode;
  final int orderPrice;
  final int shippingFee;
  final int totalPrice;
  final List<OrderDetail> detail;

  const Order({
    required this.id,
    this.ghnOrderCode,
    required this.orderPrice,
    required this.shippingFee,
    required this.totalPrice,
    required this.detail,
});


  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    ghnOrderCode,
    orderPrice,
    shippingFee,
    totalPrice,
    detail,
  ];

}