import '../entities/publisher.dart';

class PublisherModel extends Publisher {
  const PublisherModel(
      {required super.id,
      required super.name,
      required super.description,
      required super.logoImg,
      required super.createdAt,
      required super.lastUpdatedTime,
      required super.lastChangedBy,
      required super.status});

  factory PublisherModel.fromJson(Map<String, dynamic> json) {
    return PublisherModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      logoImg: json['logoImg'] ?? '',
      createdAt: json['createdAt'] ?? '',
      lastUpdatedTime: json['lastUpdatedTime'] ?? '',
      lastChangedBy: json['lastChangedBy'] ?? '',
      status: json['status'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['logoImg'] = logoImg;
    data['createdAt'] = createdAt;
    data['lastUpdatedTime'] = lastUpdatedTime;
    data['lastChangedBy'] = lastChangedBy;
    data['status'] = status;
    return data;
  }
}
