import 'package:equatable/equatable.dart';

class BookRating extends Equatable {
  final int id;
  final int star;
  final String comment;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final int bookID;
  final int customerID;

  const BookRating(
      {required this.id,
      required this.star,
      required this.comment,
      required this.createdAt,
      required this.lastUpdatedTime,
      required this.lastChangedBy,
      required this.bookID,
      required this.customerID});

  @override
  List<Object?> get props =>[
    id,
    star,
    comment,
    createdAt,
    lastUpdatedTime,
    lastChangedBy,
    bookID,
    customerID,
  ];
}
