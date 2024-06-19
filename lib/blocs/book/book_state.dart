part of 'book_bloc.dart';

sealed class BookState extends Equatable {
  const BookState();
}

final class BookInitial extends BookState {
  @override
  List<Object?> get props => [];
}

final class BookLoading extends BookState {
  @override
  List<Object?> get props => [];
}

final class BookLoaded extends BookState {
  final List<BookModel> books;

  const BookLoaded({required this.books});

  @override
  List<Object?> get props => [books];
}

final class BookFailed extends BookState {
  final String error;

  const BookFailed({required this.error});

  @override
  List<Object?> get props => [error];
}

