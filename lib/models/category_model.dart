import 'package:inkmelo_app/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel(
      {required super.id,
      required super.name,
      required super.description,
      required super.createdAt,
      required super.lastUpdatedTime,
      required super.lastChangedBy,
      required super.status});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
        description: json['description'] ?? '',
        createdAt: json['createdAt'] ?? '',
        lastUpdatedTime: json['lastUpdatedTime'] ?? '',
        lastChangedBy: json['lastChangedBy'] ?? '',
        status: json['status']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['createdAt'] = createdAt;
    data['lastUpdatedTime'] = lastUpdatedTime;
    data['lastChangedBy'] = lastChangedBy;
    data['status'] = status;
    return data;
  }
}
