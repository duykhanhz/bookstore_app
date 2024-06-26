


import 'package:bloc/bloc.dart';
import 'package:inkmelo_app/blocs/user/user_event.dart';
import 'package:inkmelo_app/blocs/user/user_state.dart';
import 'package:inkmelo_app/repositories/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  UserBloc({required this.userRepository}) : super(UserInitial()) {
    on<LoadUser>(_onLoadUsers);
  }

  Future<void> _onLoadUsers(
      LoadUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    try {
      var apiResponse = await userRepository.fecthUser();
      if (apiResponse != null) {
        emit(UserLoaded(users: apiResponse));
      } else {
        emit(const UserFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(UserFailed(error: e.toString()));
    }
  }
}