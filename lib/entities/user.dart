import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String username;
  final String fullname;
  final String email;
  final String role;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  const User(
      {required this.id,
      required this.username,
      required this.fullname,
      required this.email,
      required this.role,
      required this.createdAt,
      required this.lastUpdatedTime,
      required this.lastChangedBy,
      required this.status});

  List<Object?> get props => [
        id,
        username,
        fullname,
        email,
        role,
        createdAt,
        lastUpdatedTime,
        lastChangedBy,
        status
      ];
}
