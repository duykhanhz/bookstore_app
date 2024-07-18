import 'package:inkmelo_app/entities/shipment.dart';

class ShipmentModel extends Shipment {
 const ShipmentModel(
      {required super.id,
      required super.receiverName,
      required super.contactNumber,
      required super.description,
      required super.street,
      required super.ward,
      required super.wardCode,
      required super.district,
      required super.districtId,
      required super.province,
      required super.provinceId,
      required super.isDefault});
 factory ShipmentModel.fromJson(Map<String, dynamic> json) {
   return ShipmentModel(
     id: json['id'],
     receiverName: json['receiverName'],
     contactNumber: json['contactNumber'],
     description: json['description'],
     street: json['street'],
     ward: json['ward'],
     wardCode: json['wardCode'],
     district: json['district'],
     districtId: json['districtId'],
     province: json['province'],
     provinceId: json['provinceId'],
     isDefault: json['isDefault'],
   );
 }
 Map<String, dynamic> toJson() {
   final Map<String, dynamic> data = <String, dynamic>{};
   data['id'] = id;
   data['receiverName'] = receiverName;
   data['contactNumber'] = contactNumber;
   data['description'] = description;
   data['street'] = street;
   data['ward'] = ward;
   data['wardCode'] = wardCode;
   data['district'] = district;
   data['districtId'] = districtId;
   data['province'] = province;
   data['provinceId'] = provinceId;
   data['isDefault'] = isDefault;
   return data;
 }
}
