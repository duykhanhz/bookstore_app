import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../repositories/authen_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenRepository authenRepository;
  AuthenticationBloc({required this.authenRepository})
      : super(AuthenticationInitial()) {
    on<LoginAccount>(_onLoginAccount);
  }

  Future<void> _onLoginAccount(
      LoginAccount event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationInProcess());
    try {
      var authenModel = await authenRepository.loginWithAccount(
          event.userName, event.password);
      if (authenModel != null) {
        emit(const AuthenticationSuccess());
      } else {
        emit(const AuthenticationFailed(
            error: 'Tài khoản hoặc mật khẩu không đúng!'));
      }
    } catch (e) {
      emit(AuthenticationFailed(error: e.toString()));
    }
  }
}
