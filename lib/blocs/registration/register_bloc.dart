import 'package:bloc/bloc.dart';
import 'package:inkmelo_app/repositories/user_repository.dart';
import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRepository userRepository;

  RegisterBloc({required this.userRepository}) : super(RegisterInitial()) {
    on<LoadRegister>(_onRegisterUser);
  }

  Future<void> _onRegisterUser(
      LoadRegister event, Emitter<RegisterState> emit) async {
    emit(RegisterLoading());
    try {
      final bool isSuccess = await userRepository.registerUser(event.userModel);
      if (isSuccess) {
        emit(RegisterSuccess());
      } else {
        emit(const RegisterFailed(error: 'Registration failed'));
      }
    } catch (e) {
      emit(RegisterFailed(error: e.toString()));
    }
  }
}