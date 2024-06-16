import 'package:inkmelo_app/entities/category.dart';


class CategoryModel extends Category {
  CategoryModel(
      {required super.id,
        required super.name,
        required super.description,
        required super.createdAt,
        required super.lastUpdatedTime,
        required super.lastChangedBy,
        required super.status});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        createdAt: json['createdAt'],
        lastUpdatedTime: json['lastUpdatedTime'],
        lastChangedBy: json['lastChangedBy'],
        status: json['status']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedTime'] = this.lastUpdatedTime;
    data['lastChangedBy'] = this.lastChangedBy;
    data['status'] = this.status;
    return data;
  }
}
