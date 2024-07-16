import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/user_model.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class LoadRegister extends RegisterEvent {
  final UserModel userModel;

  const LoadRegister({required this.userModel});

  @override
  List<Object> get props => [userModel];
}