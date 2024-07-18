import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/cart_detail_model.dart';

class GHN extends Equatable {
  final int id;
  final String ghnOrderCode;
  final int orderPrice;
  final int shippingFee;
  final int totalPrice;
  final List<CartDetail> detail;
  final String deliveredDate;
  final String pickupTime;
  final List<String> tag;
  final String createdAt;
  final String ghnOrderStatus;

  const GHN(
      {required this.id,
      required this.ghnOrderCode,
      required this.orderPrice,
      required this.shippingFee,
      required this.totalPrice,
      required this.detail,
        required this.deliveredDate,
      required this.pickupTime,
      required this.tag,
      required this.createdAt,
      required this.ghnOrderStatus});

  @override

  List<Object?> get props => [
        id,
        ghnOrderCode,
        orderPrice,
        shippingFee,
        totalPrice,
        detail,
        tag,
    deliveredDate,
        pickupTime,
        createdAt,
        ghnOrderStatus
      ];
}
