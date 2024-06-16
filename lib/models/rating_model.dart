import 'package:inkmelo_app/models/customer_model.dart';



class RatingModel {
  final int star;
  final String comment;
  final CustomerModel customer;
  final String createdAt;

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    var customerModel = CustomerModel.fromJson(json['customer']);
    return RatingModel(
      star: json['star'],
      comment: json['comment'],
      customer: customerModel,
      createdAt: json['createdAt'],
    );
  }

  RatingModel(
      {required this.star,
        required this.comment,
        required this.customer,
        required this.createdAt});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['star'] = star;
    data['comment'] = comment;
    data['customer'] = customer.toJson();
    data['createdAt'] = createdAt;
    return data;
  }
}