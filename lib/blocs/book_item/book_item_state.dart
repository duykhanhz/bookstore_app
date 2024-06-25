

import 'package:equatable/equatable.dart';
import 'package:inkmelo_app/models/book_item_model.dart';

sealed class BookItemState extends Equatable {
  const BookItemState();
}

final class BookItemInitial extends BookItemState {
  @override
  List<Object?> get props => [];
}

final class BookItemLoading extends BookItemState {
  @override
  List<Object?> get props => [];
}

final class BookItemLoaded extends BookItemState {
  final List<BookItemModel> book_items;

  const BookItemLoaded({required this.book_items});

  @override
  List<Object?> get props => [book_items];
}

final class BookItemFailed extends BookItemState {
  final String error;

  const BookItemFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
