

import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/entities/book_package.dart';

class OrderDetail extends Equatable{
  final int id;
  final int quantity;
  final int itemPrice;
  final int totalPrice;
  final BookPackage bookPackage;

  const OrderDetail({
    required this.id,
    required this.quantity,
    required this.itemPrice,
    required this.totalPrice,
    required this.bookPackage,
});

  @override

  List<Object?> get props => [
    id,
    quantity,
    itemPrice,
    totalPrice,
    bookPackage,
  ];
}