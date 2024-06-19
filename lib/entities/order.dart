import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final int id;
  final double totalPrice;
  final String shipmentName;
  final String shipmentAddress;
  final String phone;
  final String createdAt;
  final int customerID;
  final int paymentID;
  final String status;

  const Order(
      {required this.id,
      required this.totalPrice,
      required this.shipmentName,
      required this.shipmentAddress,
      required this.phone,
      required this.createdAt,
      required this.customerID,
      required this.paymentID,
      required this.status});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        totalPrice,
        shipmentName,
        shipmentAddress,
        phone,
        createdAt,
        customerID,
        paymentID,
        status
      ];
}
