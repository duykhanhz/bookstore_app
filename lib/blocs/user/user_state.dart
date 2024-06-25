


import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/user_model.dart';

sealed class UserState extends Equatable {
  const UserState();
}

final class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

final class UserLoading extends UserState {
  @override
  List<Object?> get props => [];
}

final class UserLoaded extends UserState {
  final List<UserModel> users;

  const UserLoaded({required this.users});

  @override
  List<Object?> get props => [users];
}

final class UserFailed extends UserState {
  final String error;

  const UserFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
