

import 'package:equatable/equatable.dart';

class CartDetail extends Equatable{
  final int id;
  final int quantity;
  final int bookPackageID;
  final int cartID;
  final String status;

  const CartDetail({
    required this.id,
    required this.quantity,
    required this.bookPackageID,
    required this.cartID,
    required this.status
});

  @override
  List<Object?> get props => [
    id,
    quantity,
    bookPackageID,
    cartID,
    status
  ];

}