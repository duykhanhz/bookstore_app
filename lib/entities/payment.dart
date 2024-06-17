

import 'package:equatable/equatable.dart';

class Payment extends Equatable{
  final int id;
  final String paymentMethod;
  final String thirdPartyCode;
  final bool isActive;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  const Payment(
      {required this.id,
        required this.paymentMethod,
        required this.thirdPartyCode,
        required this.isActive,
        required this.lastUpdatedTime,
        required this.lastChangedBy,
        required this.status});

  @override

  List<Object?> get props => [
    id,
    paymentMethod,
    thirdPartyCode,
    isActive,
    lastUpdatedTime,
    lastChangedBy,
    status
  ];
}