

import 'package:equatable/equatable.dart';

class BookCategory extends Equatable{
  final int bookID;
  final int categoryID;

  const BookCategory({
    required this.bookID,
    required this.categoryID
});

  @override
  List<Object?> get props => [
    bookID,
    categoryID
  ];
}