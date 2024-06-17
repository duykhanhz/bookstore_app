import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final int id;
  final int customerID;

  const Cart({required this.id, required this.customerID});

  List<Object?> get props => [id, customerID];
}
