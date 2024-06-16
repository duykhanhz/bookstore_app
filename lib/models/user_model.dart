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
      id : json['id'],
      username : json['username'],
      fullname : json['fullname'],
      email : json['email'],
      role : json['role'],
      createdAt : json['createdAt'],
      lastUpdatedTime : json['lastUpdatedTime'],
      lastChangedBy : json['lastChangedBy'],
      status : json['status'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['role'] = this.role;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedTime'] = this.lastUpdatedTime;
    data['lastChangedBy'] = this.lastChangedBy;
    data['status'] = this.status;
    return data;
  }
}
