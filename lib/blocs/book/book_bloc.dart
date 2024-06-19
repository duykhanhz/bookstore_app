import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/repositories/book_repository.dart';

import '../../models/book_model.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final BookRepository bookRepository;
  BookBloc({required this.bookRepository}) : super(BookInitial()) {
    on<LoadBook>(_onLoadBook);
  }

  Future<void> _onLoadBook(
      LoadBook event, Emitter<BookState> emit) async {
    emit(BookLoading());
    try {
      var apiResponse = await bookRepository.fecthBooks();
      if (apiResponse != null) {
        emit(BookLoaded(books: apiResponse));
      } else {
        emit(const BookFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(BookFailed(error: e.toString()));
    }
  }
}
