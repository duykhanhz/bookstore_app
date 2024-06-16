import 'package:equatable/equatable.dart';

class BookItem extends Equatable {
  final int id;
  final int bookId;
  final String bookTitle;
  final String bookCoverImg;
  final String type;
  final String source;
  final int duration;
  final String createdAt;
  final String lastUpdatedTime;
  final String lastChangedBy;
  final String status;

  const BookItem(
      {required this.id,
      required this.bookId,
      required this.bookTitle,
      required this.bookCoverImg,
      required this.type,
      required this.source,
      required this.duration,
      required this.createdAt,
      required this.lastUpdatedTime,
      required this.lastChangedBy,
      required this.status});

  @override
  List<Object?> get props => [
        id,
        bookId,
        bookTitle,
        bookCoverImg,
        type,
        source,
        duration,
        createdAt,
        lastUpdatedTime,
        lastChangedBy,
        status,
      ];
}
