

import 'package:bloc/bloc.dart';
import 'package:inkmelo_app/blocs/book_item/book_item_event.dart';
import 'package:inkmelo_app/blocs/book_item/book_item_state.dart';
import 'package:inkmelo_app/repositories/book_item_repository.dart';

class BookItemBloc extends Bloc<BookItemEvent, BookItemState> {
  final BookItemRepository bookItemRepository;
  BookItemBloc({required this.bookItemRepository}) : super(BookItemInitial()) {
    on<LoadBookItem>(_onLoadBookItems);
  }

  Future<void> _onLoadBookItems(
      LoadBookItem event, Emitter<BookItemState> emit) async {
    emit(BookItemLoading());
    try {
      var apiResponse = await bookItemRepository.fecthBookItem();
      if (apiResponse != null) {
        emit(BookItemLoaded(book_items: apiResponse));
      } else {
        emit(const BookItemFailed(error: 'Failed!'));
      }
    } catch (e) {
      emit(BookItemFailed(error: e.toString()));
    }
  }
}