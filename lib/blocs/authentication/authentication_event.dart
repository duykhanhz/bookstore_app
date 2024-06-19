part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

}

final class LoginAccount extends AuthenticationEvent {
  final String userName;
  final String password;

  const LoginAccount({required this.userName, required this.password});

  @override
  List<Object?> get props => [userName, password];
}