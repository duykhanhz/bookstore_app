import 'package:inkmelo_app/entities/user.dart';

class UserModel extends User {
  const UserModel(
      {required super.id,
      required super.username,
      required super.fullname,
      required super.email,
      required super.role,
      required super.createdAt,
      required super.lastUpdatedTime,
      required super.lastChangedBy,
      required super.status});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'] ?? '',
      fullname: json['fullname'] ?? '',
      email: json['email'] ?? '',
      role: json['role'] ?? '',
      createdAt: json['createdAt'] ?? '',
      lastUpdatedTime: json['lastUpdatedTime'] ?? '',
      lastChangedBy: json['lastChangedBy'] ?? '',
      status: json['status'] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['fullname'] = fullname;
    data['email'] = email;
    data['role'] = role;
    data['createdAt'] = createdAt;
    data['lastUpdatedTime'] = lastUpdatedTime;
    data['lastChangedBy'] = lastChangedBy;
    data['status'] = status;
    return data;
  }
}
