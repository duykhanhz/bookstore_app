class CustomerModel {
  final String fullname;
  final String profileImg;

  CustomerModel({required this.fullname, required this.profileImg});

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
        fullname: json['fullname'], profileImg: json['profileImg']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullname'] = fullname;
    data['profileImg'] = profileImg;
    return data;
  }
}
