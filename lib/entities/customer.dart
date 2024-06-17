

import 'package:equatable/equatable.dart';

class Customer extends Equatable{
  final int id;
  final String fullName;
  final DateTime dateofBirth;
  final String gender;
  final String phone;
  final String email;
  final String profileIMG;
  final int cartID;
  final int userID;
  final String status;

  const Customer(
      {required this.id,
        required this.fullName,
        required this.dateofBirth,
        required this.gender,
        required this.phone,
        required this.email,
        required this.profileIMG,
        required this.cartID,
        required this.userID,
        required this.status});

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    fullName,
    dateofBirth,
    gender,
    phone,
    email,
    profileIMG,
    cartID,
    userID,
    status
  ];
}