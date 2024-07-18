import 'package:equatable/equatable.dart';

class Shipment extends Equatable {
  final int id;
  final String receiverName;
  final String contactNumber;
  final String description;
  final String street;
  final String ward;
  final String wardCode;
  final String district;
  final int districtId;
  final String province;
  final int provinceId;
  final bool isDefault;

 const  Shipment(
      {required this.id,
      required this.receiverName,
      required this.contactNumber,
      required this.description,
      required this.street,
      required this.ward,
      required this.wardCode,
      required this.district,
      required this.districtId,
      required this.province,
      required this.provinceId,
      required this.isDefault});

  @override
  List<Object?> get props => [
        id,
        receiverName,
        contactNumber,
        description,
        street,
        ward,
        wardCode,
        district,
        districtId,
        province,
        provinceId,
        isDefault
      ];
}
