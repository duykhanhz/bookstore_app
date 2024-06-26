import 'package:equatable/equatable.dart';

class AuthenModel extends Equatable {
  final String userName;
  final String jwtToken;
  final List<String> roles;

  const AuthenModel(
      {required this.userName, required this.jwtToken, required this.roles});

  factory AuthenModel.fromJson(Map<String, dynamic> json) {
    return AuthenModel(
        userName: json['username'],
        jwtToken: json['jwtToken'],
        roles: List<String>.from(json['roles']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['username'] = userName;
    data['jwtToken'] = jwtToken;
    data['roles'] = roles;
    return data;
  }

  @override
  List<Object?> get props => [userName, jwtToken, roles];
}
