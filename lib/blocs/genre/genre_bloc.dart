

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inkmelo_app/blocs/genre/genre_event.dart';
import 'package:inkmelo_app/blocs/genre/genre_state.dart';
import 'package:inkmelo_app/repositories/genre_repository.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final GenreRepository genreRepository;
  GenreBloc({required this.genreRepository}) : super(GenreInitial()) {
    on<LoadGenre>(_onLoadGenres);
  }

  Future<void> _onLoadGenres(
      LoadGenre event, Emitter<GenreState> emit) async {
    emit(GenreLoading());
    try {
      var apiResponse = await genreRepository.fecthGenre();
      if (apiResponse != null) {
        emit(GenreLoaded(genres: apiResponse));
      } else {
        emit(const GenreFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(GenreFailed(error: e.toString()));
    }
  }
}